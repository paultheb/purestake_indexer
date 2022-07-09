defmodule PureStakeIndexer.Blocks do

  @moduledoc """
  Handles block-specific requests: requests against the **/v2/blocks** endpoint with a
  **required** *round_number* parameter.
  """

  @endpoint "/v2/blocks/"

  @spec get(String.t()) :: PureStakeIndexer.response()
  def get(round_number) do
    PureStakeIndexer.get(@endpoint <> "#{round_number}")
  end

end
