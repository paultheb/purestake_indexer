defmodule PureStakeIndexer.SwaggerJson do
  import PureStakeIndexer

  @moduledoc """
  Handles request to get the swagger JSON for the Indexer API.
  """

  @spec get() :: PureStakeIndexer.response()
  def get(), do: get("/swagger.json")

end
