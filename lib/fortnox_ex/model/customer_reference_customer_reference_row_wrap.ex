# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CustomerReferenceCustomerReferenceRowWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CustomerReferenceRow
  ]

  @type t :: %__MODULE__{
    :CustomerReferenceRow => FortnoxEx.Model.CustomerReferenceCustomerReferenceRow.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CustomerReferenceCustomerReferenceRowWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CustomerReferenceRow, :struct, FortnoxEx.Model.CustomerReferenceCustomerReferenceRow, options)
  end
end

