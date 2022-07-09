defmodule PureStakeIndexer.Asset do

  @moduledoc """
  Handles asset-specific requests: requests against the **/v2/assets** endpoint with a
  **required** *asset_id* parameter and optional additional parameters.
  """

  @endpoint "/v2/assets/"

  @spec get(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def get(asset_id, params \\ []) do
    options = [params: params]

    PureStakeIndexer.get(@endpoint <> "#{asset_id}", [], options)
  end

  @spec balances(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def balances(asset_id, params \\ []) do
    options = [params: params]

    PureStakeIndexer.get(@endpoint <> "#{asset_id}/balances", [], options)
  end

  @spec transactions(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def transactions(asset_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get(@endpoint <> "#{asset_id}/transactions", [], options)
  end

end
