defmodule PsIndexer.Asset do

  import PsIndexer

  @endpoint "/v2/assets/"

  @spec get(String.t(), [HTTPoison.Base.params]) :: any
  def get(asset_id, params \\ []) do
    options = [params: params]

    PsIndexer.get(@endpoint <> "#{asset_id}", [], options)
    |> extract_body_as_map!
  end

  def balances(asset_id, params \\ []) do
    options = [params: params]

    PsIndexer.get(@endpoint <> "#{asset_id}/balances", [], options)
    |> extract_body_as_map!
  end

  def transactions(asset_id, params \\ []) do
    options = [params: params]
    PsIndexer.get(@endpoint <> "#{asset_id}/transactions", [], options)
    |> extract_body_as_map!
  end

end
