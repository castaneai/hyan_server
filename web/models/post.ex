defmodule HyanServer.Post do
  use HyanServer.Web, :model

  schema "posts" do
    field :thumbnail_url, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:thumbnail_url])
    |> validate_required([:thumbnail_url])
  end
end
