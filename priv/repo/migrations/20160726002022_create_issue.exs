defmodule CulturalTrailApi.Repo.Migrations.CreateIssue do
  use Ecto.Migration

  def change do
    create table(:issues) do
      add :name, :string
      add :description, :string
      add :imageUrl, :string
      add :lat, :float
      add :lng, :float
      add :priority, :integer
      add :open, :boolean, default: false
      add :reportedDate, :datetime
      add :resolvedDate, :datetime
      add :user_id, references(:users, on_delete: :nothing)

      timestamps
    end
    create index(:issues, [:user_id])

  end
end
