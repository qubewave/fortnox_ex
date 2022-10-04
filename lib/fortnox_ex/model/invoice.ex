# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Invoice do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :@urlTaxReductionList,
    :AdministrationFee,
    :AdministrationFeeVAT,
    :Address1,
    :Address2,
    :Balance,
    :BasisTaxReduction,
    :Booked,
    :Cancelled,
    :City,
    :Comments,
    :ContractReference,
    :ContributionPercent,
    :ContributionValue,
    :Country,
    :CostCenter,
    :Credit,
    :CreditInvoiceReference,
    :Currency,
    :CurrencyRate,
    :CurrencyUnit,
    :CustomerName,
    :CustomerNumber,
    :DeliveryAddress1,
    :DeliveryAddress2,
    :DeliveryCity,
    :DeliveryCountry,
    :DeliveryDate,
    :DeliveryName,
    :DeliveryZipCode,
    :DocumentNumber,
    :DueDate,
    :EDIInformation,
    :EmailInformation,
    :EUQuarterlyReport,
    :ExternalInvoiceReference1,
    :ExternalInvoiceReference2,
    :Freight,
    :FreightVAT,
    :Gross,
    :HouseWork,
    :InvoiceDate,
    :InvoicePeriodStart,
    :InvoicePeriodEnd,
    :InvoicePeriodReference,
    :InvoiceRows,
    :InvoiceType,
    :Labels,
    :Language,
    :LastRemindDate,
    :Net,
    :NotCompleted,
    :NoxFinans,
    :OCR,
    :OfferReference,
    :OrderReference,
    :OrganisationNumber,
    :OurReference,
    :PaymentWay,
    :Phone1,
    :Phone2,
    :PriceList,
    :PrintTemplate,
    :Project,
    :WarehouseReady,
    :OutboundDate,
    :Remarks,
    :Reminders,
    :RoundOff,
    :Sent,
    :TaxReduction,
    :TermsOfDelivery,
    :TermsOfPayment,
    :TimeBasisReference,
    :Total,
    :TotalToPay,
    :TotalVAT,
    :VATIncluded,
    :VoucherNumber,
    :VoucherSeries,
    :VoucherYear,
    :WayOfDelivery,
    :YourOrderNumber,
    :YourReference,
    :ZipCode,
    :AccountingMethod,
    :TaxReductionType,
    :FinalPayDate
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :@urlTaxReductionList => String.t | nil,
    :AdministrationFee => float() | nil,
    :AdministrationFeeVAT => float() | nil,
    :Address1 => String.t | nil,
    :Address2 => String.t | nil,
    :Balance => float() | nil,
    :BasisTaxReduction => float() | nil,
    :Booked => boolean() | nil,
    :Cancelled => boolean() | nil,
    :City => String.t | nil,
    :Comments => String.t | nil,
    :ContractReference => integer() | nil,
    :ContributionPercent => float() | nil,
    :ContributionValue => float() | nil,
    :Country => String.t | nil,
    :CostCenter => String.t | nil,
    :Credit => String.t | nil,
    :CreditInvoiceReference => String.t | nil,
    :Currency => String.t | nil,
    :CurrencyRate => float() | nil,
    :CurrencyUnit => integer() | nil,
    :CustomerName => String.t | nil,
    :CustomerNumber => String.t,
    :DeliveryAddress1 => String.t | nil,
    :DeliveryAddress2 => String.t | nil,
    :DeliveryCity => String.t | nil,
    :DeliveryCountry => String.t | nil,
    :DeliveryDate => Date.t | nil,
    :DeliveryName => String.t | nil,
    :DeliveryZipCode => String.t | nil,
    :DocumentNumber => String.t | nil,
    :DueDate => Date.t | nil,
    :EDIInformation => FortnoxEx.Model.InvoiceEdiInformation.t | nil,
    :EmailInformation => FortnoxEx.Model.InvoiceEmailInformation.t | nil,
    :EUQuarterlyReport => boolean() | nil,
    :ExternalInvoiceReference1 => String.t | nil,
    :ExternalInvoiceReference2 => String.t | nil,
    :Freight => float() | nil,
    :FreightVAT => float() | nil,
    :Gross => float() | nil,
    :HouseWork => boolean() | nil,
    :InvoiceDate => Date.t | nil,
    :InvoicePeriodStart => Date.t | nil,
    :InvoicePeriodEnd => Date.t | nil,
    :InvoicePeriodReference => String.t | nil,
    :InvoiceRows => [FortnoxEx.Model.InvoiceInvoiceRow.t] | nil,
    :InvoiceType => String.t | nil,
    :Labels => [FortnoxEx.Model.InvoiceLabel.t] | nil,
    :Language => String.t | nil,
    :LastRemindDate => Date.t | nil,
    :Net => float() | nil,
    :NotCompleted => boolean() | nil,
    :NoxFinans => boolean() | nil,
    :OCR => String.t | nil,
    :OfferReference => String.t | nil,
    :OrderReference => String.t | nil,
    :OrganisationNumber => String.t | nil,
    :OurReference => String.t | nil,
    :PaymentWay => String.t | nil,
    :Phone1 => String.t | nil,
    :Phone2 => String.t | nil,
    :PriceList => String.t | nil,
    :PrintTemplate => String.t | nil,
    :Project => String.t | nil,
    :WarehouseReady => boolean() | nil,
    :OutboundDate => Date.t | nil,
    :Remarks => String.t | nil,
    :Reminders => integer() | nil,
    :RoundOff => float() | nil,
    :Sent => boolean() | nil,
    :TaxReduction => integer() | nil,
    :TermsOfDelivery => String.t | nil,
    :TermsOfPayment => String.t | nil,
    :TimeBasisReference => integer() | nil,
    :Total => float() | nil,
    :TotalToPay => float() | nil,
    :TotalVAT => float() | nil,
    :VATIncluded => boolean() | nil,
    :VoucherNumber => integer() | nil,
    :VoucherSeries => String.t | nil,
    :VoucherYear => integer() | nil,
    :WayOfDelivery => String.t | nil,
    :YourOrderNumber => String.t | nil,
    :YourReference => String.t | nil,
    :ZipCode => String.t | nil,
    :AccountingMethod => String.t | nil,
    :TaxReductionType => String.t | nil,
    :FinalPayDate => Date.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Invoice do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:DeliveryDate, :date, nil, options)
    |> deserialize(:DueDate, :date, nil, options)
    |> deserialize(:EDIInformation, :struct, FortnoxEx.Model.InvoiceEdiInformation, options)
    |> deserialize(:EmailInformation, :struct, FortnoxEx.Model.InvoiceEmailInformation, options)
    |> deserialize(:InvoiceDate, :date, nil, options)
    |> deserialize(:InvoicePeriodStart, :date, nil, options)
    |> deserialize(:InvoicePeriodEnd, :date, nil, options)
    |> deserialize(:InvoiceRows, :list, FortnoxEx.Model.InvoiceInvoiceRow, options)
    |> deserialize(:Labels, :list, FortnoxEx.Model.InvoiceLabel, options)
    |> deserialize(:LastRemindDate, :date, nil, options)
    |> deserialize(:OutboundDate, :date, nil, options)
    |> deserialize(:FinalPayDate, :date, nil, options)
  end
end

