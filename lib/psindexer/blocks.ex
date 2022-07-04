defmodule PsIndexer.Blocks do

  import PsIndexer

  @endpoint "/v2/blocks/"

  @spec get(String.t()) :: any
  def get(round_number) do
    PsIndexer.get(@endpoint <> "#{round_number}")
    |> extract_body_as_map!
  end

end
