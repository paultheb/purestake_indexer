defmodule PureStakeIndexer.Applications do
  import PureStakeIndexer

  @moduledoc """
  Handles request to get all applications based on supplied optional parameters.
  """

  @spec get([HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def get(params \\ []) do
    options = [params: params]
    get("/v2/applications", [], options)
  end

end
