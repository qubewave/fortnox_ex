# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.InvoicePayloadInvoiceRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :AccountNumber,
    :ArticleNumber,
    :CostCenter,
    :DeliveredQuantity,
    :Description,
    :Discount,
    :DiscountType,
    :HouseWork,
    :HouseWorkHoursToReport,
    :HouseWorkType,
    :Price,
    :Project,
    :RowId,
    :StockPointCode,
    :Unit,
    :VAT
  ]

  @type t :: %__MODULE__{
    :AccountNumber => integer() | nil,
    :ArticleNumber => String.t | nil,
    :CostCenter => String.t | nil,
    :DeliveredQuantity => String.t | nil,
    :Description => String.t | nil,
    :Discount => float() | nil,
    :DiscountType => String.t | nil,
    :HouseWork => boolean() | nil,
    :HouseWorkHoursToReport => integer() | nil,
    :HouseWorkType => String.t | nil,
    :Price => float() | nil,
    :Project => String.t | nil,
    :RowId => integer() | nil,
    :StockPointCode => String.t | nil,
    :Unit => String.t | nil,
    :VAT => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.InvoicePayloadInvoiceRow do
  def decode(value, _options) do
    value
  end
end

