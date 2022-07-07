defmodule PureStakeIndexer.Asset do

  @endpoint "/v2/assets/"

  @spec get(String.t(), [HTTPoison.Base.params]) :: any
  def get(asset_id, params \\ []) do
    options = [params: params]

    PureStakeIndexer.get(@endpoint <> "#{asset_id}", [], options)
  end

  def balances(asset_id, params \\ []) do
    options = [params: params]

    PureStakeIndexer.get(@endpoint <> "#{asset_id}/balances", [], options)
  end

  def transactions(asset_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get(@endpoint <> "#{asset_id}/transactions", [], options)
  end

end