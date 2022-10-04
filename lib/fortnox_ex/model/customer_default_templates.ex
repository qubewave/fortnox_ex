# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CustomerDefaultTemplates do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CashInvoice,
    :Invoice,
    :Offer,
    :Order
  ]

  @type t :: %__MODULE__{
    :CashInvoice => String.t | nil,
    :Invoice => String.t | nil,
    :Offer => String.t | nil,
    :Order => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CustomerDefaultTemplates do
  def decode(value, _options) do
    value
  end
end

