# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.InvoiceAccrualListItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Description,
    :InvoiceNumber,
    :Period
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Description => String.t,
    :InvoiceNumber => integer(),
    :Period => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.InvoiceAccrualListItem do
  def decode(value, _options) do
    value
  end
end

