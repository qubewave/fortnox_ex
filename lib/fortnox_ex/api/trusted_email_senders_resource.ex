# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.TrustedEmailSendersResource do
  @moduledoc """
  API calls for all endpoints tagged `TrustedEmailSendersResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Add a new email address as trusted

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (TrustedEmailSenderTrustedSenderWrap): trusted email sender to create

  ### Returns

  - `{:ok, FortnoxEx.Model.TrustedEmailSenderTrustedSenderWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_trusted_email_senders_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.TrustedEmailSenderTrustedSenderWrap.t} | {:error, Tesla.Env.t}
  def create_trusted_email_senders_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/emailsenders/trusted")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.TrustedEmailSenderTrustedSenderWrap{}}
    ])
  end

  @doc """
  Retrieve a list of all trusted and rejected senders

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.TrustedEmailSenderWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_trusted_email_senders_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.TrustedEmailSenderWrap.t} | {:error, Tesla.Env.t}
  def get_trusted_email_senders_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/emailsenders/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.TrustedEmailSenderWrap{}}
    ])
  end

  @doc """
  Delete an email address from the trusted senders list
  Provide an id matching an email to delete.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): identifies the trusted email sender to delete
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_trusted_email_senders_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_trusted_email_senders_resource(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/3/emailsenders/trusted/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end
end