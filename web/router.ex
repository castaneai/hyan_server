defmodule HyanServer.Router do
  use HyanServer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HyanServer do
    pipe_through :api

    resources "/posts", PostController
  end
end
