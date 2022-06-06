defmodule ApiSampleWeb.ApiView do
  use ApiSampleWeb, :view

  def render( "api.json", %{ api_data: params } ) do
      %{
          params: params,
          id:   123,
          name: "hoge"
      }
  end
end
