defmodule PureStakeIndexer.Health do
  import PureStakeIndexer

  @moduledoc """
  Handles request to get all current health of the Indexer API.
  """

  @doc """
  Gets the current health status.

  ## Example

  iex> PureStakeIndexer.Health.get()

  ## Responses

  ### 200 Response

        %{
          "data" => %{
            "migration-required" => false,
            "read-only-mode" => true
          },
          "db-available" => true,
          "is-migrating" => false,
          "message" => "22461750",
          "round" => 22461750,
          "version" => "2.11.1"
        }

  """

  @spec get :: any
  def get, do: get("/health")

end
