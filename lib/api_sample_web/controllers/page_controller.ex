defmodule ApiSampleWeb.PageController do
  use ApiSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
