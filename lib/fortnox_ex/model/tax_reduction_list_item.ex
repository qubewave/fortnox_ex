# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TaxReductionListItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :ApprovedAmount,
    :CustomerName,
    :Id,
    :ReferenceDocumentType,
    :ReferenceNumber,
    :SocialSecurityNumber
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :ApprovedAmount => float() | nil,
    :CustomerName => String.t,
    :Id => integer() | nil,
    :ReferenceDocumentType => String.t,
    :ReferenceNumber => integer(),
    :SocialSecurityNumber => String.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TaxReductionListItem do
  def decode(value, _options) do
    value
  end
end

