defmodule PsIndexer.Account do
  import PsIndexer

  @spec get(String.t(), [HTTPoison.Base.params]) :: any # update this return type to be the right struct
  def get(account_id, params \\ []) do
    options = [params: params]
    get("/v2/accounts/#{account_id}", [], options)
    |> extract_body_as_map!()
  end

  @spec apps_local_state(String.t(), [HTTPoison.Base.params]) :: any
  def apps_local_state(account_id, params \\ []) do
    options = [params: params]
    PsIndexer.get("/v2/accounts/#{account_id}/apps-local-state", [], options)
    |> extract_body_as_map!()
  end

  @spec assets(String.t(), [HTTPoison.Base.params]) :: any
  def assets(account_id, params \\ []) do
    options = [params: params]
    PsIndexer.get("/v2/accounts/#{account_id}/assets", [], options)
    |> extract_body_as_map!()
  end

  @spec created_applications(String.t(), [HTTPoison.Base.params]) :: any
  def created_applications(account_id, params \\ []) do
    options = [params: params]
    PsIndexer.get("/v2/accounts/#{account_id}/created-applications", [], options)
    |> extract_body_as_map!()
  end

  @spec created_assets(String.t(), [HTTPoison.Base.params]) :: any
  def created_assets(account_id, params \\ []) do
    options = [params: params]
    PsIndexer.get("/v2/accounts/#{account_id}/created-assets", [], options)
    |> extract_body_as_map!()
  end

  def transactions(account_id, params \\ []) do
    options = [params: params]
    PsIndexer.get("/v2/accounts/#{account_id}/transactions", [], options)
    |> extract_body_as_map!()
  end

end
