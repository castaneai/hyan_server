defmodule HyanServer.User do
  use HyanServer.Web, :model

  schema "users" do
    field :id_name, :string
    field :screen_name, :string
    field :hashed_password, :string
    field :password, :string, virtual: true

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id_name, :screen_name, :password])
    |> validate_required([:id_name, :screen_name, :password])
    |> unique_constraint(:id_name)
    |> validate_length(:id_name, min: 4, max: 140)
    |> validate_format(:id_name, ~r/[0-9A-Za-z_-]+/)
    |> validate_length(:password, min: 8)
  end

  defp hash_password(password) do
    Comeonin.Bcrypt.hashpwsalt(password)
  end
end
