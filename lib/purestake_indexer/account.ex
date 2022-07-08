defmodule PureStakeIndexer.Account do
  import PureStakeIndexer

  @moduledoc """
  Handles account-specific requests: requests against the **/v2/accounts** endpoint with a
  **required** *account_id* parameter and optional additional parameters.
  """

  @spec get(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def get(account_id, params \\ []) do
    options = [params: params]
    get("/v2/accounts/#{account_id}", [], options)
  end

  @spec apps_local_state(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def apps_local_state(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/apps-local-state", [], options)
  end

  @spec assets(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def assets(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/assets", [], options)
  end

  @spec created_applications(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def created_applications(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/created-applications", [], options)
  end

  @spec created_assets(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def created_assets(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/created-assets", [], options)
  end

  @spec transactions(String.t(), [HTTPoison.Base.params()]) :: PureStakeIndexer.response()
  def transactions(account_id, params \\ []) do
    options = [params: params]
    PureStakeIndexer.get("/v2/accounts/#{account_id}/transactions", [], options)
  end

end
