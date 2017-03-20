defmodule HyanServer.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :id_name, :string
      add :screen_name, :string
      add :password, :string

      timestamps()
    end
    create unique_index(:users, [:id_name])

  end
end
