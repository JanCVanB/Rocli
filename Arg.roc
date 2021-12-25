interface Arg
    exposes [ CommandSchema, CommandValue, FlagSchema, FlagValue, PositionalArgumentSchema, PositionalArgumentValue, RawArgs ]
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

PositionalArgumentSchema : {
    name: Str,
    description: Str }

PositionalArgumentValue : {
    contents: Str,
    schema: PositionalArgumentSchema }

RawArgs : Str


# TODO: Use this in test.roc
# appendHelpFlag : CommandSchema -> CommandSchema

# TODO: Use this in test.roc
# parseArgs : RawArgs, List CommandSchema -> (Result CommandValue [ NoSchemaMatched ])
