defmodule PureStakeIndexer.Application do
  import PureStakeIndexer

  @moduledoc """
  Handles application-specific requests: requests against the **/v2/applications** endpoint with a
  **required** *application_id* parameter and optional additional parameters.
  """

  @spec get(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def get(application_id, params \\ []) do
    options = [params: params]
    get("/v2/applications/#{application_id}", [], options)
  end

  @spec logs(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def logs(application_id, params \\ []) do
    options = [params: params]
    get("/v2/applications/#{application_id}/logs", [], options)
  end

end
