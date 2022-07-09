defmodule PureStakeIndexer.Accounts do
  import PureStakeIndexer

  @moduledoc """
  Handles request to get all accounts based on supplied optional parameters.
  """

  @spec get([HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def get(params \\ []) do
    options = [params: params]
    get("/v2/accounts", [], options)
  end

end
