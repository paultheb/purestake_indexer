defmodule PureStakeIndexer.Assets do

  @moduledoc """
  Handles request to get all assets based on supplied optional parameters.
  """

  @endpoint "/v2/assets"

  @spec get([HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def get(params \\ []) do
    options = [params: params]

    PureStakeIndexer.get(@endpoint, [], options)
  end

end
