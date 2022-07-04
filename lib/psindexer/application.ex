defmodule PsIndexer.Application do
  import PsIndexer

  @spec get(String.t(), [HTTPoison.Base.params]) :: any # update this return type to be the right struct
  def get(application_id, params \\ []) do
    options = [params: params]
    get("/v2/applications/#{application_id}", [], options)
    |> extract_body_as_map!
  end

  @spec logs(String.t(), [HTTPoison.Base.params]) :: any
  def logs(application_id, params \\ []) do
    options = [params: params]
    get("/v2/applications/#{application_id}/logs", [], options)
    |> extract_body_as_map!
  end

end
