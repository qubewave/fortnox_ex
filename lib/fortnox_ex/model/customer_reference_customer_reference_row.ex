# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CustomerReferenceCustomerReferenceRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Reference,
    :CustomerNumber,
    :Id
  ]

  @type t :: %__MODULE__{
    :Reference => String.t | nil,
    :CustomerNumber => String.t | nil,
    :Id => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CustomerReferenceCustomerReferenceRow do
  def decode(value, _options) do
    value
  end
end

