# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TermsOfPaymentWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :TermsOfPayment
  ]

  @type t :: %__MODULE__{
    :TermsOfPayment => FortnoxEx.Model.TermsOfPayment.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TermsOfPaymentWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TermsOfPayment, :struct, FortnoxEx.Model.TermsOfPayment, options)
  end
end

