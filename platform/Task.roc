interface Task
# Inspired by https://github.com/rtfeldman/roc/blob/trunk/examples/cli/platform/Task.roc
    exposes [ Task, attempt, await, fail, map, onFail, succeed ]
    imports [ fx.Effect ]


Task ok err : Effect.Effect (Result ok err)


attempt : Task a b, (Result a b -> Task c d) -> Task c d

await : Task a err, (a -> Task b err) -> Task b err

fail : err -> Task * err

onFail : Task ok a, (a -> Task ok b) -> Task ok b

map : Task a err, (a -> b) -> Task b err

succeed : val -> Task val *
