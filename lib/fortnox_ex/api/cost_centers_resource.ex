# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.CostCentersResource do
  @moduledoc """
  API calls for all endpoints tagged `CostCentersResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a cost center

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CostCenterWrap): cost center to create

  ### Returns

  - `{:ok, FortnoxEx.Model.CostCenterWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_cost_centers_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.CostCenterWrap.t} | {:error, Tesla.Env.t}
  def create_cost_centers_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/costcenters")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CostCenterWrap{}}
    ])
  end

  @doc """
  Retrieve a single cost center

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the cost center
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.CostCenterWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_cost_centers_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.CostCenterWrap.t} | {:error, Tesla.Env.t}
  def get_cost_centers_resource(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/costcenters/#{code}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CostCenterWrap{}}
    ])
  end

  @doc """
  Retrieve a list of cost centers
  The cost centers register can return a list of records or a single record. By specifying a Code in the URL, a single record will be returned. Not specifying a Code will return a list of records.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.CostCenterList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_cost_centers_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.CostCenterList.t} | {:error, Tesla.Env.t}
  def list_cost_centers_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/costcenters")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CostCenterList{}}
    ])
  end

  @doc """
  Remove a cost center

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the cost center to remove
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_cost_centers_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_cost_centers_resource(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/costcenters/#{code}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a cost center

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the cost center
  - `opts` (keyword): Optional parameters
    - `:body` (CostCenterWrap): cost center to update

  ### Returns

  - `{:ok, FortnoxEx.Model.CostCenterWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_cost_centers_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.CostCenterWrap.t} | {:error, Tesla.Env.t}
  def update_cost_centers_resource(connection, code, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/costcenters/#{code}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CostCenterWrap{}}
    ])
  end
end
