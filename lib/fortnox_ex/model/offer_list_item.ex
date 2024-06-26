# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.OfferListItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Cancelled,
    :Currency,
    :CustomerName,
    :CustomerNumber,
    :DocumentNumber,
    :OfferDate,
    :Project,
    :Sent,
    :Total
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Cancelled => boolean() | nil,
    :Currency => String.t | nil,
    :CustomerName => String.t | nil,
    :CustomerNumber => String.t,
    :DocumentNumber => String.t | nil,
    :OfferDate => Date.t | nil,
    :Project => String.t | nil,
    :Sent => boolean() | nil,
    :Total => float() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.OfferListItem do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:OfferDate, :date, nil, options)
  end
end

