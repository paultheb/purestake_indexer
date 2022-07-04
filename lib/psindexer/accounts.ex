defmodule PsIndexer.Accounts do
  import PsIndexer

  @spec get([HTTPoison.Base.params]) :: any # update this return type to be the right struct
  def get(params \\ []) do
    options = [params: params]
    get("/v2/accounts", [], options)
    |> extract_body_as_map()
  end

end
