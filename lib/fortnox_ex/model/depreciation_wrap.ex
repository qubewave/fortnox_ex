# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.DepreciationWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Asset
  ]

  @type t :: %__MODULE__{
    :Asset => FortnoxEx.Model.Depreciation.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.DepreciationWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Asset, :struct, FortnoxEx.Model.Depreciation, options)
  end
end

