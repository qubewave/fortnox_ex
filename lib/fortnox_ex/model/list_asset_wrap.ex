# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ListAssetWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Assets
  ]

  @type t :: %__MODULE__{
    :Assets => [FortnoxEx.Model.ListAsset.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ListAssetWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Assets, :list, FortnoxEx.Model.ListAsset, options)
  end
end

