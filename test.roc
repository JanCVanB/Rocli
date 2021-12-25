#!/usr/bin/env roc

app "test"
    packages { pf: "./roc/examples/cli/platform" }
    imports [ Rocli, pf.Stdout, pf.Task ]
    provides [ main ] to pf


main : Task.Task {} *
main =
    _ <- Task.await (Stdout.line "")
    command1 = { name: "Command 1", shortName: "c1", description: "This is command #1.", flags: [], positionalArguments: [] }
    command2 = { name: "Command 2", shortName: "c2", description: "This is command #2.", flags: [], positionalArguments: [] }
    schemas = [command1, command2]
    # TODO: This is blocked by https://github.com/rtfeldman/roc/issues/2279
    value = Rocli.parseCommand "command2 arg1 arg2" schemas
    help = Rocli.constructHelp value.schema
    Stdout.line help
