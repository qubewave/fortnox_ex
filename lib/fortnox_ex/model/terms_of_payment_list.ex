# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TermsOfPaymentList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :TermsOfPayments
  ]

  @type t :: %__MODULE__{
    :TermsOfPayments => [FortnoxEx.Model.TermsOfPayment.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TermsOfPaymentList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TermsOfPayments, :list, FortnoxEx.Model.TermsOfPayment, options)
  end
end

