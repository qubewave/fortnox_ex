# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.AssetFileConnectionResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :AssetFileConnections,
    :MetaInformation
  ]

  @type t :: %__MODULE__{
    :AssetFileConnections => [FortnoxEx.Model.AssetFileConnection.t] | nil,
    :MetaInformation => FortnoxEx.Model.MetaInformation.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.AssetFileConnectionResponse do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:AssetFileConnections, :list, FortnoxEx.Model.AssetFileConnection, options)
    |> deserialize(:MetaInformation, :struct, FortnoxEx.Model.MetaInformation, options)
  end
end

