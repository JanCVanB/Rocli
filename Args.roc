interface Args
    exposes [ CommandSchema, parseCommand ]
    imports []


CommandSchema : {
    name: Str,
    shortName: Str,
    description: Str,
    flags: List FlagSchema,
    positionalArguments: List PositionalArgumentSchema }

CommandValue : {
    flags: List FlagValue,
    positionalArguments: List PositionalArgumentValue,
    schema: CommandSchema }

FlagSchema : {
    name: Str,
    isRequired: Bool,
    shortName: Str }

FlagValue : {
    contents: Str,
    wasUsed: Bool,
    schema: FlagSchema }

parseCommand : Str, List CommandSchema -> CommandValue
parseCommand = \_, _ ->
    # TODO: Replace this placeholder implementation with a real one.
    { flags: [], positionalArguments: [], schema: { name: "n", shortName: "s", description: "d", flags: [], positionalArguments: [] }}

PositionalArgumentSchema : {
    name: Str,
    description: Str }

PositionalArgumentValue : {
    contents: Str,
    schema: PositionalArgumentSchema }
