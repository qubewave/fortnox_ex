# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ContractTemplateInvoiceRow do
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
    :Price,
    :Project,
    :Unit
  ]

  @type t :: %__MODULE__{
    :AccountNumber => integer() | nil,
    :ArticleNumber => String.t | nil,
    :CostCenter => String.t | nil,
    :DeliveredQuantity => String.t | nil,
    :Description => String.t | nil,
    :Discount => float() | nil,
    :DiscountType => String.t | nil,
    :Price => float() | nil,
    :Project => String.t | nil,
    :Unit => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ContractTemplateInvoiceRow do
  def decode(value, _options) do
    value
  end
end

