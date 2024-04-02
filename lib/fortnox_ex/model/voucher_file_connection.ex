# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.VoucherFileConnection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :FileId,
    :VoucherDescription,
    :VoucherNumber,
    :VoucherSeries,
    :VoucherYear
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :FileId => String.t,
    :VoucherDescription => String.t | nil,
    :VoucherNumber => String.t,
    :VoucherSeries => String.t,
    :VoucherYear => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.VoucherFileConnection do
  def decode(value, _options) do
    value
  end
end

