defmodule PsIndexer.Assets do

  import PsIndexer

  @endpoint "/v2/assets"

  @spec get([HTTPoison.Base.params]) :: any
  def get(params \\ []) do
    options = [params: params]

    PsIndexer.get(@endpoint, [], options)
    |> extract_body_as_map!
  end

end
