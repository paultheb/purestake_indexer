defmodule Algoex.Indexer.Assets do

  import Algoex

  @endpoint "/v2/assets"

  @type response :: %{
    "next-token": String.t(),
    assets: [],
    "current-round": integer
  }

  @spec get([HTTPoison.Base.params]) :: response
  def get(params \\ []) do
    options = [params: params]

    Algoex.get(@endpoint, [], options)
    |> extract_body_as_map()
  end

end
