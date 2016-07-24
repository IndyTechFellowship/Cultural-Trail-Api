defmodule CulturalTrailApi.SessionController do
  use CulturalTrailApi.Web, :controller

  alias CulturalTrailApi.User

  def login(conn, %{"user" => user_params}) do
    if user = Repo.get_by(User, email: user_params["email"]) do

      token = User.generate_token(user)

      conn
      |> put_status(200)
      |> render(CulturalTrailApi.SessionView, "show.json", token: token)
    else
      conn
      |> put_status(:unprocessable_entity)
      |> render(CulturalTrailApi.SessionView, "error.json", message: "Nope")
    end
  end

  def validate(conn, _params) do
    conn
    |> put_status(200)
    |> render(CulturalTrailApi.UserView, "show.json", user: %User{email: "test"})
  end
end
