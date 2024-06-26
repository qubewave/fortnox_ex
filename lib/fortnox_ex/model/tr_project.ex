# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TrProject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :description,
    :projectLeader,
    :startDate,
    :endDate,
    :status,
    :orderTime,
    :orderAmount,
    :invoicedAmount,
    :totalAmountInInvoices
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :description => String.t | nil,
    :projectLeader => String.t | nil,
    :startDate => Date.t | nil,
    :endDate => Date.t | nil,
    :status => integer() | nil,
    :orderTime => float() | nil,
    :orderAmount => float() | nil,
    :invoicedAmount => float() | nil,
    :totalAmountInInvoices => float() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TrProject do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:startDate, :date, nil, options)
    |> deserialize(:endDate, :date, nil, options)
  end
end

