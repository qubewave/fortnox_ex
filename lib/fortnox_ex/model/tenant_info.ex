# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TenantInfo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :tenantId,
    :activated
  ]

  @type t :: %__MODULE__{
    :tenantId => integer() | nil,
    :activated => boolean() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TenantInfo do
  def decode(value, _options) do
    value
  end
end

