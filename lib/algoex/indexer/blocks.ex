defmodule Algoex.Indexer.Blocks do

  import Algoex

  @endpoint "/v2/blocks/"

  @spec get(String.t()) :: any
  def get(round_number) do
    Algoex.get(@endpoint <> "#{round_number}")
    |> extract_body_as_map
  end

end
