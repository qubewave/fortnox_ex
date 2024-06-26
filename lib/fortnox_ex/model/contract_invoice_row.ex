# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ContractInvoiceRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :AccountNumber,
    :ArticleNumber,
    :ContributionPercent,
    :ContributionValue,
    :CostCenter,
    :DeliveredQuantity,
    :Description,
    :Discount,
    :DiscountType,
    :HouseWork,
    :HouseWorkHoursToReport,
    :HouseWorkType,
    :Price,
    :PriceExcludingVAT,
    :Project,
    :RowId,
    :Total,
    :TotalExcludingVAT,
    :Unit,
    :VAT
  ]

  @type t :: %__MODULE__{
    :AccountNumber => integer() | nil,
    :ArticleNumber => String.t,
    :ContributionPercent => String.t | nil,
    :ContributionValue => String.t | nil,
    :CostCenter => String.t | nil,
    :DeliveredQuantity => String.t,
    :Description => String.t | nil,
    :Discount => float() | nil,
    :DiscountType => String.t | nil,
    :HouseWork => boolean() | nil,
    :HouseWorkHoursToReport => integer() | nil,
    :HouseWorkType => String.t | nil,
    :Price => float() | nil,
    :PriceExcludingVAT => float() | nil,
    :Project => String.t | nil,
    :RowId => integer() | nil,
    :Total => float() | nil,
    :TotalExcludingVAT => float() | nil,
    :Unit => String.t | nil,
    :VAT => float() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ContractInvoiceRow do
  def decode(value, _options) do
    value
  end
end

