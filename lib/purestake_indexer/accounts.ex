defmodule PureStakeIndexer.Accounts do
  import PureStakeIndexer

  @spec get([HTTPoison.Base.params]) :: any # update this return type to be the right struct
  def get(params \\ []) do
    options = [params: params]
    get("/v2/accounts", [], options)
  end

end