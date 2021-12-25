interface Stream
    exposes [ Stream, InputStream, OutputStream, read, write ]
    imports [ Task ]


Stream : {}


InputStream : Stream

OutputStream : Stream

read : InputStream, Str -> Task.Task Str []

write : OutputStream, Str -> Task.Task {} []

# TODO
# writeLine : OutputStream, Str -> Task.Task {} []
