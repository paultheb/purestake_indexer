# PureStake Indexer

Elixir API wrapper for the Algorand PureStake Indexer API.

Currently a WIP, needs:
- Tests
- Docs

Will need to add the following config:

```elixir
import Config

config :purestake_indexer,
  api_key: "YOUR PURESTAKE API KEY"

import_config "#{config_env()}.exs"
```

