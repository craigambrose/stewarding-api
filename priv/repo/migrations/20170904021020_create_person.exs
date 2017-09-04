defmodule Stewarding.Repo.Migrations.CreatePerson do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :key, :string

      timestamps()
    end
    create unique_index(:people, [:key])
  end
end
