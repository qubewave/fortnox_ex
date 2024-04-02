# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.AssetFileConnection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :FileId,
    :Name,
    :AssetId
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :FileId => String.t | nil,
    :Name => String.t | nil,
    :AssetId => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.AssetFileConnection do
  def decode(value, _options) do
    value
  end
end

