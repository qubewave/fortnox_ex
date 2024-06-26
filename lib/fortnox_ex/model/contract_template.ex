# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ContractTemplate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :AdministrationFee,
    :ContractLength,
    :Freight,
    :InvoiceInterval,
    :InvoiceRows,
    :Continuous,
    :OurReference,
    :PrintTemplate,
    :Remarks,
    :TemplateName,
    :TemplateNumber,
    :TermsOfDelivery,
    :TermsOfPayment,
    :WayOfDelivery
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :AdministrationFee => float() | nil,
    :ContractLength => integer() | nil,
    :Freight => float() | nil,
    :InvoiceInterval => integer() | nil,
    :InvoiceRows => [FortnoxEx.Model.ContractTemplateInvoiceRow.t] | nil,
    :Continuous => boolean() | nil,
    :OurReference => String.t | nil,
    :PrintTemplate => String.t | nil,
    :Remarks => String.t | nil,
    :TemplateName => String.t,
    :TemplateNumber => integer() | nil,
    :TermsOfDelivery => String.t | nil,
    :TermsOfPayment => String.t | nil,
    :WayOfDelivery => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ContractTemplate do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:InvoiceRows, :list, FortnoxEx.Model.ContractTemplateInvoiceRow, options)
  end
end

