# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Project do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Comments,
    :ContactPerson,
    :Description,
    :EndDate,
    :ProjectLeader,
    :ProjectNumber,
    :Status,
    :StartDate
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Comments => String.t | nil,
    :ContactPerson => String.t | nil,
    :Description => String.t,
    :EndDate => Date.t | nil,
    :ProjectLeader => String.t | nil,
    :ProjectNumber => String.t | nil,
    :Status => String.t | nil,
    :StartDate => Date.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Project do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:EndDate, :date, nil, options)
    |> deserialize(:StartDate, :date, nil, options)
  end
end

