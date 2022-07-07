defmodule PureStakeIndexer.Application do
  import PureStakeIndexer

  @spec get(String.t(), [HTTPoison.Base.params]) :: any # update this return type to be the right struct
  def get(application_id, params \\ []) do
    options = [params: params]
    get("/v2/applications/#{application_id}", [], options)
  end

  @spec logs(String.t(), [HTTPoison.Base.params]) :: any
  def logs(application_id, params \\ []) do
    options = [params: params]
    get("/v2/applications/#{application_id}/logs", [], options)
  end

end
