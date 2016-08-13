defmodule CulturalTrailApi.RegistrationController do
  use CulturalTrailApi.Web, :controller

  alias CulturalTrailApi.User
  alias SendGrid.{Mailer, Email}

  plug :scrub_params, "user" when action in [:create]

  def create(conn, %{"user" => user_params}) do
    user_params = Map.put(user_params, "email_verified", false)
    changeset = User.changeset(%User{}, user_params)

    case Repo.insert(changeset) do
      {:ok, user} ->
        confirm_url = CulturalTrailApi.Router.Helpers.registration_url(CulturalTrailApi.Endpoint, :verify, user.id)
        send_confirmation_email(user.email, confirm_url)
        conn
        |> put_status(:created)
        |> render(CulturalTrailApi.UserView, "show.json", user: user)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(CulturalTrailApi.ChangesetView, "error.json", changeset: changeset)
    end
  end

  defp send_confirmation_email(user_email, confirm_url) do
    email =
      Email.build()
      |> Email.put_from("verify@culturaltrailapp.com")
      |> Email.add_to(user_email)
      |> Email.put_subject("Please confirm your email")
      |> Email.put_text(confirm_url)

      Mailer.send(email)
  end


  def verify(conn, %{"id" => id}) do
    user = Repo.get!(User, id)
    changeset = User.changeset(user, %{"email_verified": true})
    case Repo.update(changeset) do
      {:ok, user} ->
        front_end_url = Application.get_env(:cultural_trail_api, :web_url)
        redirect conn, external: front_end_url
        #conn
        #|> put_status(200)
        #|> render(CulturalTrailApi.EmailVerificationView, "confirmation.json")
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(CulturalTrailApi.ChangesetView, "error.json", changeset: changeset)
    end
  end
end
