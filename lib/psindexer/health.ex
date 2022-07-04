defmodule PsIndexer.Health do
  import PsIndexer

  @type health_response :: %{
    "db-available": boolean(),
    data: %{
      "migration-required": boolean(),
      "read-only-mode": boolean()
    },
    round: integer(),
    message: String.t(),
    "is-migrating": boolean(),
    version: String.t(),
    errors: []
  }

  @moduledoc """
  Health for the PureStake Indexer API.
  """

  @doc """
  Gets the current health status.

  ## Example

  iex> PsIndexer.Health.get()

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

  ### 403 Response

        %{
          "data" => String.t(),
          "message" => String.t()
        }

  """

  @spec get :: health_response
  def get, do: get("/health") |> extract_body_as_map

end
