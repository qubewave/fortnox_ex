# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.TaxReductionsResource do
  @moduledoc """
  API calls for all endpoints tagged `TaxReductionsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a Tax Reduction
  Note that different types of tax reduction, i.e. ROT, RUT, or Green Technology, applications work differently.  When creating an application for Green Technology, the field <em>TaxReductionAmounts</em> becomes mandatory as  it is used to determine how much of the asked amount is intended for which type of work. Similarly, the <em>AskedAmount</em>  field of the <em>TaxReduction</em> becomes optional, as it will always be considered to be equal to the sum of the <em>TaxReductionAmounts</em>.   For the other types, ROT and RUT, this field is not required and should be omitted.   Unlike earlier iterations of this endpoint, specifying the type of reduction for the provided <em>TaxReduction</em> (e.g. ROT, RUT, or Green)  is not necessary as this value will always be equal to the type set on the provided document instead.   This endpoint can raise a variety of validation errors, some of which are only relevant for Green Technology applications.  Those errors will always return an HTTP Code of 400 and include, but are not limited to, those shown below:   <table>      <caption>Errors that can be raised by this endpoint.</caption>      <tr>          <th>Error Code</th>          <th>Types</th>          <th>Description</th>          <th>Solution</th>      </tr>      <tr>          <td>2000600</td>          <td>ROT, RUT, GREEN</td>          <td>The provided Social Security Number is already in use for this document.</td>          <td>Verify that the Social Security Number is different from any other applicants already added.</td>      </tr>      <tr>          <td>2004217, 2004218</td>          <td>ROT, RUT, GREEN</td>          <td>The total asked amount of the application is either in an invalid format or is negative.</td>          <td>Verify that the <em>AskedAmount</em>-field is a positive number (0 is valid for Green Technology) and that it is an integer.</td>      </tr>      <tr>          <td>2004209</td>          <td>GREEN</td>          <td>The <em>WorkType</em>-field contains a work type that is not valid for the given type of reduction.</td>          <td>Ensure that the <em>WorkType</em> contains a valid type of work for Green Technology.</td>      </tr>      <tr>          <td>2004263</td>          <td>GREEN</td>          <td>The <em>TaxReductionAmounts</em>-field is missing for a Green Technology application.</td>          <td>Ensure that the field is included, that it is an array, and that each contained object denotes a specific type's asked amount.</td>      </tr>      <tr>          <td>2004262</td>          <td>GREEN</td>          <td>There are more than one object denoting the asked amount for the same type in the <em>TaxReductionAmounts</em>-field.</td>          <td>Ensure that there is only one object denoting the asked amount per type contained in the array.</td>      </tr>  </table>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (TaxReductionWrap): to create

  ### Returns

  - `{:ok, FortnoxEx.Model.TaxReductionWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_tax_reductions_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.TaxReductionWrap.t} | {:error, Tesla.Env.t}
  def create_tax_reductions_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/taxreductions")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.TaxReductionWrap{}}
    ])
  end

  @doc """
  Retrieve a single tax reduction

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): identifies the tax reduction
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.TaxReductionWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_tax_reductions_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.TaxReductionWrap.t} | {:error, Tesla.Env.t}
  def get_tax_reductions_resource(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/taxreductions/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.TaxReductionWrap{}}
    ])
  end

  @doc """
  Retrieve a list of tax reductions

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:filter` (String.t): possibility to filter tax reductions

  ### Returns

  - `{:ok, FortnoxEx.Model.TaxReductionListItemList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_tax_reductions_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.TaxReductionListItemList.t} | {:error, Tesla.Env.t}
  def list_tax_reductions_resource(connection, opts \\ []) do
    optional_params = %{
      :filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/taxreductions")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.TaxReductionListItemList{}}
    ])
  end

  @doc """
  Remove a tax reduction

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): identifies the tax reduction
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_tax_reductions_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_tax_reductions_resource(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/taxreductions/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a tax reduction

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): identifies the tax reduction
  - `opts` (keyword): Optional parameters
    - `:body` (TaxReductionWrap): to update

  ### Returns

  - `{:ok, FortnoxEx.Model.TaxReductionWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_tax_reductions_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.TaxReductionWrap.t} | {:error, Tesla.Env.t}
  def update_tax_reductions_resource(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/taxreductions/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.TaxReductionWrap{}}
    ])
  end
end
