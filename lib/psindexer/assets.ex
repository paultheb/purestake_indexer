defmodule PsIndexer.Assets do

  import PsIndexer

  @endpoint "/v2/assets"

  @type response :: %{
    "next-token": String.t(),
    assets: [],
    "current-round": integer
  }

  @spec get([HTTPoison.Base.params]) :: response
  def get(params \\ []) do
    options = [params: params]

    PsIndexer.get(@endpoint, [], options)
    |> extract_body_as_map()
  end

end
