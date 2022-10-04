# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Customer do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :Address1,
    :Address2,
    :City,
    :Country,
    :Comments,
    :Currency,
    :CostCenter,
    :CountryCode,
    :Active,
    :CustomerNumber,
    :DefaultDeliveryTypes,
    :DefaultTemplates,
    :DeliveryAddress1,
    :DeliveryAddress2,
    :DeliveryCity,
    :DeliveryCountry,
    :DeliveryCountryCode,
    :DeliveryFax,
    :DeliveryName,
    :DeliveryPhone1,
    :DeliveryPhone2,
    :DeliveryZipCode,
    :Email,
    :EmailInvoice,
    :EmailInvoiceBCC,
    :EmailInvoiceCC,
    :EmailOffer,
    :EmailOfferBCC,
    :EmailOfferCC,
    :EmailOrder,
    :EmailOrderBCC,
    :EmailOrderCC,
    :ExternalReference,
    :Fax,
    :GLN,
    :GLNDelivery,
    :InvoiceAdministrationFee,
    :InvoiceDiscount,
    :InvoiceFreight,
    :InvoiceRemark,
    :Name,
    :OrganisationNumber,
    :OurReference,
    :Phone1,
    :Phone2,
    :PriceList,
    :Project,
    :SalesAccount,
    :ShowPriceVATIncluded,
    :TermsOfDelivery,
    :TermsOfPayment,
    :Type,
    :VATNumber,
    :VATType,
    :VisitingAddress,
    :VisitingCity,
    :VisitingCountry,
    :VisitingCountryCode,
    :VisitingZipCode,
    :WayOfDelivery,
    :WWW,
    :YourReference,
    :ZipCode
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :Address1 => String.t | nil,
    :Address2 => String.t | nil,
    :City => String.t | nil,
    :Country => String.t | nil,
    :Comments => String.t | nil,
    :Currency => String.t | nil,
    :CostCenter => String.t | nil,
    :CountryCode => String.t | nil,
    :Active => boolean() | nil,
    :CustomerNumber => String.t | nil,
    :DefaultDeliveryTypes => FortnoxEx.Model.CustomerDefaultDeliveryTypes.t | nil,
    :DefaultTemplates => FortnoxEx.Model.CustomerDefaultTemplates.t | nil,
    :DeliveryAddress1 => String.t | nil,
    :DeliveryAddress2 => String.t | nil,
    :DeliveryCity => String.t | nil,
    :DeliveryCountry => String.t | nil,
    :DeliveryCountryCode => String.t | nil,
    :DeliveryFax => String.t | nil,
    :DeliveryName => String.t | nil,
    :DeliveryPhone1 => String.t | nil,
    :DeliveryPhone2 => String.t | nil,
    :DeliveryZipCode => String.t | nil,
    :Email => String.t | nil,
    :EmailInvoice => String.t | nil,
    :EmailInvoiceBCC => String.t | nil,
    :EmailInvoiceCC => String.t | nil,
    :EmailOffer => String.t | nil,
    :EmailOfferBCC => String.t | nil,
    :EmailOfferCC => String.t | nil,
    :EmailOrder => String.t | nil,
    :EmailOrderBCC => String.t | nil,
    :EmailOrderCC => String.t | nil,
    :ExternalReference => String.t | nil,
    :Fax => String.t | nil,
    :GLN => String.t | nil,
    :GLNDelivery => String.t | nil,
    :InvoiceAdministrationFee => String.t | nil,
    :InvoiceDiscount => float() | nil,
    :InvoiceFreight => String.t | nil,
    :InvoiceRemark => String.t | nil,
    :Name => String.t,
    :OrganisationNumber => String.t | nil,
    :OurReference => String.t | nil,
    :Phone1 => String.t | nil,
    :Phone2 => String.t | nil,
    :PriceList => String.t | nil,
    :Project => String.t | nil,
    :SalesAccount => String.t | nil,
    :ShowPriceVATIncluded => boolean() | nil,
    :TermsOfDelivery => String.t | nil,
    :TermsOfPayment => String.t | nil,
    :Type => String.t | nil,
    :VATNumber => String.t | nil,
    :VATType => String.t | nil,
    :VisitingAddress => String.t | nil,
    :VisitingCity => String.t | nil,
    :VisitingCountry => String.t | nil,
    :VisitingCountryCode => String.t | nil,
    :VisitingZipCode => String.t | nil,
    :WayOfDelivery => String.t | nil,
    :WWW => String.t | nil,
    :YourReference => String.t | nil,
    :ZipCode => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Customer do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:DefaultDeliveryTypes, :struct, FortnoxEx.Model.CustomerDefaultDeliveryTypes, options)
    |> deserialize(:DefaultTemplates, :struct, FortnoxEx.Model.CustomerDefaultTemplates, options)
  end
end

