interface Help
    exposes [ constructHelp ]
    imports [ Args ]


constructHelp : Args.CommandSchema -> Str
constructHelp = \schema ->
    # TODO: Replace this placeholder implementation with a real one.
    "\(schema.name) - \(schema.description)"
