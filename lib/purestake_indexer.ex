defmodule PureStakeIndexer do
  use HTTPoison.Base

  @endpoint "https://testnet-algorand.api.purestake.io/idx2"
  @api_key Application.fetch_env!(:purestake_indexer, :api_key)

  @type response :: {:ok, HTTPoison.Response.t()}

  @moduledoc """
  API wrapper for the PureStake Algorand Indexer.

  Indexer Testnet v2.11.1

  PureStake Indexer API Documentation: https://developer.purestake.io/apis
  """

  @doc "Returnns the HTTPoison.Response body as a map."
  @spec to_map!(response()) :: %{}
  def to_map!(http_response), do: http_response |> elem(1) |> Map.get(:body)

  @doc "HTTPoison.Base override for process_url/1"
  def process_url(url), do: @endpoint <> url

  @doc "HTTPoision.Base override for process_request_headers/1"
  def process_request_headers(headers) do
    [
      {"x-api-key", "#{@api_key}"},
      {"Content-Type", "application/json"}
      | headers
    ]
  end

  @doc "HTTPoision.Base override for process_response_body/1"
  def process_response_body(body), do: Jason.decode!(body)

end
