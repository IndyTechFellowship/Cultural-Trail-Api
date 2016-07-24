defmodule CulturalTrailApi.User do
  use CulturalTrailApi.Web, :model

  schema "users" do
    field :email, :string
    field :password_hash, :string
    field :password, :string, virtual: true

    timestamps
  end

  @required_fields ~w(email password)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> unique_constraint(:email)
    |> validate_length(:password, min: 5)
    |> hash_password
  end


  defp hash_password(changeset) do
    if password = get_change(changeset, :password) do
      changeset
      |> put_change(:password_hash, Comeonin.Bcrypt.hashpwsalt(password))
      else
        changeset
      end
  end

  def generate_token(user) do
    %{user_id: user.id}
    |> Joken.token
    |> Joken.with_signer(Joken.hs256("secret-change-me"))
    |> Joken.sign
    |> Joken.get_compact
  end

  def verify_token(sessionToken) do
    sessionToken
    |> Joken.token
    |> Joken.with_signer(Joken.hs256("secret-change-me"))
    |> Joken.verify
  end

end
