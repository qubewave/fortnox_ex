# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CreateAssetFileConnection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :FileId,
    :AssetId
  ]

  @type t :: %__MODULE__{
    :FileId => String.t | nil,
    :AssetId => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CreateAssetFileConnection do
  def decode(value, _options) do
    value
  end
end

