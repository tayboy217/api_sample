defmodule ApiSampleWeb.ApiController do
  use ApiSampleWeb, :controller

  def index( conn, params ) do
      render( conn, "api.json", api_data: params )
  end
end

