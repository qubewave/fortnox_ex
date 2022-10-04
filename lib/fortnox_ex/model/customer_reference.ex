# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CustomerReference do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CustomerReferenceRows
  ]

  @type t :: %__MODULE__{
    :CustomerReferenceRows => [FortnoxEx.Model.CustomerReferenceCustomerReferenceRow.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CustomerReference do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CustomerReferenceRows, :list, FortnoxEx.Model.CustomerReferenceCustomerReferenceRow, options)
  end
end

