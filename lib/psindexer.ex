defmodule PsIndexer do
  use HTTPoison.Base

  @endpoint "https://testnet-algorand.api.purestake.io/idx2"
  @api_key Application.fetch_env!(:psindexer, :api_key)

  @moduledoc """
  API wrapper for the PureStake Algorand Indexer API.
  """
  @spec extract_body_as_map!({:ok, %HTTPoison.Response{}}) :: %{}
  def extract_body_as_map!(http_response), do: http_response |> elem(1) |> Map.get(:body)

  # HTTPoison Overrides
  def process_url(url), do: @endpoint <> url

  def process_request_headers(headers) do
    [
      {"x-api-key", "#{@api_key}"},
      {"Content-Type", "application/json"}
      | headers
    ]
  end

  def process_response_body(body), do: Jason.decode!(body)

end
