interface Context
    exposes [ Context ]
    imports [ Arg, Env, Stream ]


Context : {
    rawExecutablePath: Str,
    rawArgs: Arg.RawArgs,
    envVars: List Env.EnvVar,
    stdin: Stream.InputStream,
    stdout: Stream.OutputStream,
    stderr: Stream.OutputStream }
