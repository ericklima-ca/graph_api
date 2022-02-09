defmodule GraphAPIWeb.Router do
  use GraphAPIWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: GraphAPIWeb.Schema

    forward "/", Absinthe.Plug, schema: GraphAPIWeb.Schema
  end
end
