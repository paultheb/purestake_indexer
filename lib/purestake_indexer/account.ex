defmodule PureStakeIndexer.Account do
  import PureStakeIndexer

  @spec get(String.t(), [HTTPoison.Base.params]) :: any # update this return type to be the right struct
  def get(account_id, params \\ []) do
    options = [params: params]
    get("/v2/accounts/#{account_id}", [], options)
  end

  @spec apps_local_state(String.t(), [HTTPoison.Base.params]) :: any
  def apps_local_state(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/apps-local-state", [], options)
  end

  @spec assets(String.t(), [HTTPoison.Base.params]) :: any
  def assets(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/assets", [], options)
  end

  @spec created_applications(String.t(), [HTTPoison.Base.params]) :: any
  def created_applications(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/created-applications", [], options)
  end

  @spec created_assets(String.t(), [HTTPoison.Base.params]) :: any
  def created_assets(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/created-assets", [], options)
  end

  def transactions(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/transactions", [], options)
  end

end
