# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CostCenterWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CostCenter
  ]

  @type t :: %__MODULE__{
    :CostCenter => FortnoxEx.Model.CostCenter.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CostCenterWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CostCenter, :struct, FortnoxEx.Model.CostCenter, options)
  end
end

