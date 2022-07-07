defmodule PureStakeIndexer.Blocks do

  @endpoint "/v2/blocks/"

  @spec get(String.t()) :: any
  def get(round_number) do
    PureStakeIndexer.get(@endpoint <> "#{round_number}")
  end

end
