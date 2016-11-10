defmodule CulturalTrailApi.Issue do
  use CulturalTrailApi.Web, :model

  schema "issues" do
    field :name, :string
    field :description, :string
    field :imageUrl, :string
    field :lat, :float
    field :lng, :float
    field :priority, :integer
    field :open, :boolean, default: false
    field :reportedDate, Ecto.DateTime
    field :resolvedDate, Ecto.DateTime
    field :responsibleParty, :string
    belongs_to :user, CulturalTrailApi.User

    timestamps
  end

  @required_fields ~w(name description imageUrl lat lng priority reportedDate open user_id responsibleParty)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
