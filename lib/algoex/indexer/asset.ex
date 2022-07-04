defmodule Algoex.Indexer.Asset do

  import Algoex

  @endpoint "/v2/assets/"

  @type response :: %{
    "current-round": integer,
    asset: %{},
  }

  @spec get(String.t(), [HTTPoison.Base.params]) :: response
  def get(asset_id, params \\ []) do
    options = [params: params]

    Algoex.get(@endpoint <> "#{asset_id}", [], options)
    |> extract_body_as_map()
  end

  def balances(asset_id, params \\ []) do
    options = [params: params]

    Algoex.get(@endpoint <> "#{asset_id}/balances", [], options)
    |> extract_body_as_map
  end

  def transactions(asset_id, params \\ []) do
    options = [params: params]
    Algoex.get(@endpoint <> "#{asset_id}/transactions", [], options)
    |> extract_body_as_map
  end

end
