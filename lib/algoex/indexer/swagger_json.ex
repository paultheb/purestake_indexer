defmodule Algoex.Indexer.SwaggerJson do
  import Algoex

  @spec get() :: any # update this return type to be the right struct
  def get(), do: get("/swagger.json") |> extract_body_as_map()

end
