defmodule CulturalTrailApi.Repo.Migrations.AddEmailVerifiedToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :email_verified, :boolean
    end
  end
end
