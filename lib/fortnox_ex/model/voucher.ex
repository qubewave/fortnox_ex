# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Voucher do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Comments,
    :CostCenter,
    :Description,
    :Project,
    :ReferenceNumber,
    :ReferenceType,
    :TransactionDate,
    :VoucherNumber,
    :VoucherRows,
    :VoucherSeries,
    :Year,
    :ApprovalState
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Comments => String.t | nil,
    :CostCenter => String.t | nil,
    :Description => String.t,
    :Project => String.t | nil,
    :ReferenceNumber => String.t | nil,
    :ReferenceType => String.t | nil,
    :TransactionDate => Date.t,
    :VoucherNumber => integer() | nil,
    :VoucherRows => [FortnoxEx.Model.VoucherVoucherRow.t] | nil,
    :VoucherSeries => String.t,
    :Year => integer(),
    :ApprovalState => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Voucher do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TransactionDate, :date, nil, options)
    |> deserialize(:VoucherRows, :list, FortnoxEx.Model.VoucherVoucherRow, options)
  end
end

