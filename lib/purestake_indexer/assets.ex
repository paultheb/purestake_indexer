defmodule PureStakeIndexer.Assets do

  @endpoint "/v2/assets"

  @spec get([HTTPoison.Base.params]) :: any
  def get(params \\ []) do
    options = [params: params]

    PureStakeIndexer.get(@endpoint, [], options)
  end

end
