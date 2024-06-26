# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.DetailedRegistration do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :costCenter,
    :customer,
    :project,
    :service,
    :registrationCode,
    :workedDate,
    :workedHours,
    :chargeHours,
    :startTime,
    :stopTime,
    :invoiceText,
    :note,
    :userId,
    :createdBy,
    :updatedBy,
    :invoiceBasisId,
    :nonInvoiceable,
    :childId,
    :createdTime,
    :unitCost,
    :unitPrice,
    :documentId,
    :documentType
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :costCenter => FortnoxEx.Model.TrCostCenter.t | nil,
    :customer => FortnoxEx.Model.TrCustomer.t | nil,
    :project => FortnoxEx.Model.TrProject.t | nil,
    :service => FortnoxEx.Model.TrItem.t | nil,
    :registrationCode => FortnoxEx.Model.RegistrationCode.t,
    :workedDate => Date.t,
    :workedHours => float() | nil,
    :chargeHours => float() | nil,
    :startTime => DateTime.t | nil,
    :stopTime => DateTime.t | nil,
    :invoiceText => String.t | nil,
    :note => String.t | nil,
    :userId => String.t | nil,
    :createdBy => String.t | nil,
    :updatedBy => String.t | nil,
    :invoiceBasisId => integer() | nil,
    :nonInvoiceable => boolean() | nil,
    :childId => String.t | nil,
    :createdTime => DateTime.t | nil,
    :unitCost => float() | nil,
    :unitPrice => float() | nil,
    :documentId => integer() | nil,
    :documentType => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.DetailedRegistration do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:costCenter, :struct, FortnoxEx.Model.TrCostCenter, options)
    |> deserialize(:customer, :struct, FortnoxEx.Model.TrCustomer, options)
    |> deserialize(:project, :struct, FortnoxEx.Model.TrProject, options)
    |> deserialize(:service, :struct, FortnoxEx.Model.TrItem, options)
    |> deserialize(:registrationCode, :struct, FortnoxEx.Model.RegistrationCode, options)
    |> deserialize(:workedDate, :date, nil, options)
  end
end

