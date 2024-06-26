# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Supplier do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Active,
    :Address1,
    :Address2,
    :Bank,
    :BankAccountNumber,
    :BG,
    :BIC,
    :BranchCode,
    :City,
    :ClearingNumber,
    :Comments,
    :CostCenter,
    :Country,
    :CountryCode,
    :Currency,
    :DisablePaymentFile,
    :Email,
    :Fax,
    :IBAN,
    :Name,
    :OrganisationNumber,
    :OurReference,
    :OurCustomerNumber,
    :PG,
    :Phone1,
    :Phone2,
    :PreDefinedAccount,
    :Project,
    :SupplierNumber,
    :TermsOfPayment,
    :VATNumber,
    :VATType,
    :VisitingAddress,
    :VisitingCity,
    :VisitingCountry,
    :VisitingCountryCode,
    :VisitingZipCode,
    :WorkPlace,
    :WWW,
    :YourReference,
    :ZipCode
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Active => boolean() | nil,
    :Address1 => String.t | nil,
    :Address2 => String.t | nil,
    :Bank => String.t | nil,
    :BankAccountNumber => String.t | nil,
    :BG => String.t | nil,
    :BIC => String.t | nil,
    :BranchCode => String.t | nil,
    :City => String.t | nil,
    :ClearingNumber => String.t | nil,
    :Comments => String.t | nil,
    :CostCenter => String.t | nil,
    :Country => String.t | nil,
    :CountryCode => String.t | nil,
    :Currency => String.t | nil,
    :DisablePaymentFile => boolean() | nil,
    :Email => String.t | nil,
    :Fax => String.t | nil,
    :IBAN => String.t | nil,
    :Name => String.t,
    :OrganisationNumber => String.t | nil,
    :OurReference => String.t | nil,
    :OurCustomerNumber => String.t | nil,
    :PG => String.t | nil,
    :Phone1 => String.t | nil,
    :Phone2 => String.t | nil,
    :PreDefinedAccount => String.t | nil,
    :Project => String.t | nil,
    :SupplierNumber => String.t | nil,
    :TermsOfPayment => String.t | nil,
    :VATNumber => String.t | nil,
    :VATType => String.t | nil,
    :VisitingAddress => String.t | nil,
    :VisitingCity => String.t | nil,
    :VisitingCountry => String.t | nil,
    :VisitingCountryCode => String.t | nil,
    :VisitingZipCode => String.t | nil,
    :WorkPlace => String.t | nil,
    :WWW => String.t | nil,
    :YourReference => String.t | nil,
    :ZipCode => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Supplier do
  def decode(value, _options) do
    value
  end
end

