defmodule HyanServer.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :thumbnail_url, :string

      timestamps()
    end

  end
end
