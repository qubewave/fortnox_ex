# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.UpdateAssetWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :AssetType
  ]

  @type t :: %__MODULE__{
    :AssetType => FortnoxEx.Model.UpdateAsset.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.UpdateAssetWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:AssetType, :struct, FortnoxEx.Model.UpdateAsset, options)
  end
end
