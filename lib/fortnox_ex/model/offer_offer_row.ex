# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.OfferOfferRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :AccountNumber,
    :ArticleNumber,
    :ContributionPercent,
    :ContributionValue,
    :CostCenter,
    :Description,
    :Discount,
    :DiscountType,
    :HouseWork,
    :HouseWorkHoursToReport,
    :HouseWorkType,
    :Price,
    :Project,
    :Quantity,
    :RowId,
    :Total,
    :Unit,
    :VAT
  ]

  @type t :: %__MODULE__{
    :AccountNumber => integer() | nil,
    :ArticleNumber => String.t | nil,
    :ContributionPercent => String.t | nil,
    :ContributionValue => String.t | nil,
    :CostCenter => String.t | nil,
    :Description => String.t | nil,
    :Discount => float() | nil,
    :DiscountType => String.t | nil,
    :HouseWork => boolean() | nil,
    :HouseWorkHoursToReport => float() | nil,
    :HouseWorkType => String.t | nil,
    :Price => float() | nil,
    :Project => String.t | nil,
    :Quantity => String.t | nil,
    :RowId => integer() | nil,
    :Total => float() | nil,
    :Unit => String.t | nil,
    :VAT => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.OfferOfferRow do
  def decode(value, _options) do
    value
  end
end

