# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TaxReductionWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :TaxReduction
  ]

  @type t :: %__MODULE__{
    :TaxReduction => FortnoxEx.Model.TaxReduction.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TaxReductionWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TaxReduction, :struct, FortnoxEx.Model.TaxReduction, options)
  end
end

