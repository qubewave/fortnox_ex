# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SalaryTransactionWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :SalaryTransaction
  ]

  @type t :: %__MODULE__{
    :SalaryTransaction => FortnoxEx.Model.SalaryTransaction.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SalaryTransactionWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:SalaryTransaction, :struct, FortnoxEx.Model.SalaryTransaction, options)
  end
end
