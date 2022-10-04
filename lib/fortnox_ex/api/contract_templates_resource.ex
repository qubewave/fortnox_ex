# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.ContractTemplatesResource do
  @moduledoc """
  API calls for all endpoints tagged `ContractTemplatesResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a contract template

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (ContractTemplateWrap): contract template to create

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractTemplateWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_contract_templates_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ContractTemplateWrap.t} | {:error, Tesla.Env.t}
  def create_contract_templates_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/contracttemplates/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractTemplateWrap{}}
    ])
  end

  @doc """
  Retrieve a single contract template

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `template_number` (integer()): identifies the contract template
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractTemplateWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_contract_templates_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ContractTemplateWrap.t} | {:error, Tesla.Env.t}
  def get_contract_templates_resource(connection, template_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/contracttemplates/#{template_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractTemplateWrap{}}
    ])
  end

  @doc """
  Retrieve a list of contract templates
  The contract template resource can return a list of records or a single record. By specifying a TemplateNumber in the URL, a single record will be returned. Not specifying a TemplateNumber will return a list of records.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractTemplateListItemList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_contract_templates_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ContractTemplateListItemList.t} | {:error, Tesla.Env.t}
  def list_contract_templates_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/contracttemplates/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractTemplateListItemList{}}
    ])
  end

  @doc """
  Update a contract template

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `template_number` (integer()): identifies the contract template
  - `opts` (keyword): Optional parameters
    - `:body` (ContractTemplateWrap): contract template to update

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractTemplateWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_contract_templates_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ContractTemplateWrap.t} | {:error, Tesla.Env.t}
  def update_contract_templates_resource(connection, template_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/contracttemplates/#{template_number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractTemplateWrap{}}
    ])
  end
end