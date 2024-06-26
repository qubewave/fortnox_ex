# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.InvoiceListItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Balance,
    :Booked,
    :Cancelled,
    :CostCenter,
    :Currency,
    :CurrencyRate,
    :CurrencyUnit,
    :CustomerName,
    :CustomerNumber,
    :DocumentNumber,
    :DueDate,
    :ExternalInvoiceReference1,
    :ExternalInvoiceReference2,
    :InvoiceDate,
    :InvoiceType,
    :NoxFinans,
    :OCR,
    :VoucherNumber,
    :VoucherSeries,
    :VoucherYear,
    :WayOfDelivery,
    :TermsOfPayment,
    :Project,
    :Sent,
    :Total,
    :FinalPayDate
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Balance => float() | nil,
    :Booked => boolean() | nil,
    :Cancelled => boolean() | nil,
    :CostCenter => String.t | nil,
    :Currency => String.t | nil,
    :CurrencyRate => float() | nil,
    :CurrencyUnit => float() | nil,
    :CustomerName => String.t | nil,
    :CustomerNumber => String.t | nil,
    :DocumentNumber => String.t | nil,
    :DueDate => Date.t | nil,
    :ExternalInvoiceReference1 => String.t | nil,
    :ExternalInvoiceReference2 => String.t | nil,
    :InvoiceDate => Date.t | nil,
    :InvoiceType => String.t | nil,
    :NoxFinans => boolean() | nil,
    :OCR => String.t | nil,
    :VoucherNumber => integer() | nil,
    :VoucherSeries => String.t | nil,
    :VoucherYear => integer() | nil,
    :WayOfDelivery => String.t | nil,
    :TermsOfPayment => String.t | nil,
    :Project => String.t | nil,
    :Sent => boolean() | nil,
    :Total => float() | nil,
    :FinalPayDate => Date.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.InvoiceListItem do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:DueDate, :date, nil, options)
    |> deserialize(:InvoiceDate, :date, nil, options)
    |> deserialize(:FinalPayDate, :date, nil, options)
  end
end

