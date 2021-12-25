interface File
    exposes [ FileContents, FilePath, readFile, writeFile ]
    imports [ Stream, Task ]


# TODO
# File : Stream.Stream

FileContents : Str

FilePath : Str

# TODO
# InputFile : Stream.InputStream

# TODO
# OutputFile : Stream.OutputStream


# TODO
# append : OutputFile, Str -> Task.Task {} []

# TODO
# appendLine : append

# TODO
# read : InputFile -> Task.Task Str []

readFile : FilePath -> Task.Task Str [ FileNotFound, PermissionDenied ]

# TODO
# withInputFile : Str, (InputFile -> Task.Task {} []) -> Task.Task {} [ FileNotFound, PermissionDenied ]

# TODO
# withOutputFile : Str, (OutputFile -> Task.Task {} []) -> Task.Task {} [ FileNotFound, PermissionDenied ]

# TODO
# write : OutputFile, Str -> Task.Task {} []

writeFile : FilePath, FileContents -> Task.Task {} [ FileNotFound, PermissionDenied ]
