defmodule HyanServer.PostController do
  use HyanServer.Web, :controller

  def index(conn, _params) do
    json conn, %{test: "test"}
  end
end
