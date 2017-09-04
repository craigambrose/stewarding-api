defmodule StewardingWeb.Router do
  use StewardingWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", StewardingWeb do
    pipe_through :api

    post "/add_person", PersonController, :add
  end
end
