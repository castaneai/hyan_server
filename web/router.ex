defmodule HyanServer.Router do
  use HyanServer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug CORSPlug, origin: ["http://localhost:3000"]
  end

  scope "/api", HyanServer do
    pipe_through :api

    resources "/posts", PostController
  end
end
