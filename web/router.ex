defmodule CulturalTrailApi.Router do
  use CulturalTrailApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :authenticated do
  plug Mellon, validator: {CulturalTrailApi.Validation, :validate, []}, header: "api-token"
end

  scope "/api/", CulturalTrailApi do
    pipe_through :authenticated
    pipe_through :api

    get "/auth/validate", SessionController, :validate
  end

  scope "/", CulturalTrailApi do
    pipe_through :api

    resources "/users", UserController

    post "/auth", RegistrationController, :create
    post "/auth/login", SessionController, :login
  end

  scope "/", CulturalTrailApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", CulturalTrailApi do
  #   pipe_through :api
  # end
end
