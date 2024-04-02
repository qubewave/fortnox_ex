# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Article do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :ArticleNumber,
    :Bulky,
    :ConstructionAccount,
    :Depth,
    :Description,
    :DisposableQuantity,
    :EAN,
    :EUAccount,
    :EUVATAccount,
    :ExportAccount,
    :Height,
    :Housework,
    :HouseworkType,
    :Active,
    :Manufacturer,
    :ManufacturerArticleNumber,
    :Note,
    :PurchaseAccount,
    :PurchasePrice,
    :QuantityInStock,
    :ReservedQuantity,
    :SalesAccount,
    :StockGoods,
    :StockPlace,
    :StockValue,
    :StockWarning,
    :SupplierName,
    :SupplierNumber,
    :Type,
    :Unit,
    :VAT,
    :WebshopArticle,
    :Weight,
    :Width,
    :Expired,
    :SalesPrice,
    :CostCalculationMethod,
    :StockAccount,
    :StockChangeAccount,
    :DirectCost,
    :FreightCost,
    :OtherCost,
    :DefaultStockPoint,
    :DefaultStockLocation
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :ArticleNumber => String.t | nil,
    :Bulky => boolean() | nil,
    :ConstructionAccount => integer() | nil,
    :Depth => integer() | nil,
    :Description => String.t,
    :DisposableQuantity => float() | nil,
    :EAN => String.t | nil,
    :EUAccount => integer() | nil,
    :EUVATAccount => integer() | nil,
    :ExportAccount => integer() | nil,
    :Height => integer() | nil,
    :Housework => boolean() | nil,
    :HouseworkType => String.t | nil,
    :Active => boolean() | nil,
    :Manufacturer => String.t | nil,
    :ManufacturerArticleNumber => String.t | nil,
    :Note => String.t | nil,
    :PurchaseAccount => integer() | nil,
    :PurchasePrice => float() | nil,
    :QuantityInStock => float() | nil,
    :ReservedQuantity => float() | nil,
    :SalesAccount => integer() | nil,
    :StockGoods => boolean() | nil,
    :StockPlace => String.t | nil,
    :StockValue => float() | nil,
    :StockWarning => float() | nil,
    :SupplierName => String.t | nil,
    :SupplierNumber => String.t | nil,
    :Type => String.t | nil,
    :Unit => String.t | nil,
    :VAT => float() | nil,
    :WebshopArticle => boolean() | nil,
    :Weight => integer() | nil,
    :Width => integer() | nil,
    :Expired => boolean() | nil,
    :SalesPrice => float() | nil,
    :CostCalculationMethod => String.t | nil,
    :StockAccount => integer() | nil,
    :StockChangeAccount => integer() | nil,
    :DirectCost => float() | nil,
    :FreightCost => float() | nil,
    :OtherCost => float() | nil,
    :DefaultStockPoint => String.t | nil,
    :DefaultStockLocation => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Article do
  def decode(value, _options) do
    value
  end
end

