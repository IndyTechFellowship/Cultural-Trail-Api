defmodule CulturalTrailApi.SessionController do
  use CulturalTrailApi.Web, :controller

  alias CulturalTrailApi.User

  def login(conn, %{"user" => user_params}) do
    if user = Repo.get_by(User, email: user_params["email"]) do

      password_match = Comeonin.Bcrypt.checkpw(user_params["password"], user.password_hash)
      token = User.generate_token(user)

      if password_match == false do
        conn
        |> put_status(:unprocessable_entity)
        |> render(CulturalTrailApi.SessionView, "error.json", error: "invalid password")

      else
        conn
        |> put_status(200)
        |> render(CulturalTrailApi.SessionView, "show.json", %{token: token, user_id: user.id})
      end
    else

      conn
      |> put_status(:unprocessable_entity)
      |> render(CulturalTrailApi.SessionView, "error.json", error: "invalid email")
    end
  end

  def validate(conn, _params) do
    conn
    |> put_status(200)
    |> render(CulturalTrailApi.UserView, "valid.json", user: %{})
  end
end
