#!/usr/bin/env roc

app "test"
    packages { pf: "./platform" }
    imports [ pf.Context, pf.File, pf.Stream, pf.Task ]
    provides [ main ] to pf


# TODO: Solve `roc check` errors (I must be misunderstanding `Task.await` somehow).
# TODO: Use all exposed platform types in main, to improve design testing with `roc check`.
# TODO: Simplify the exposed platform types, to allow more beautiful code in main.
main : Context.Context -> Task.Task {} []
main = \{ envVars, stderr, stdout } ->
    inputFilePath = "./path/to/input_file"
    envVarsSummary = Str.joinWith (List.map envVars (\envVar ->
        key = envVar.key
        value = envVar.value
        "    \(key)=\(value)")) "\n"
    _ <- Task.await (Stream.write stderr "Env vars:\n\(envVarsSummary)")
    i <- Task.await (File.readFile inputFilePath)
    when i is
        Err _ -> Stream.write stderr "Bad input file path: \(inputFilePath)"
        Ok inputValue ->
            outputValue = "Computing the output from the input..."
            outputFilePath = "./path/to/output_file"
            o <- Task.await (File.writeFile outputFilePath outputValue)
            when o is
                Err _ ->
                    Stream.write stderr "Bad output file"
                Ok input ->
                    Stream.write stdout "Success!"
