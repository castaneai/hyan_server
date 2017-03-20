defmodule HyanServer.UserTest do
  use HyanServer.ModelCase

  alias HyanServer.User

  @valid_attrs %{id_name: "valid_id-name", password: "some content", screen_name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "id_name must be at least 4 characters long" do
    attrs = %{@valid_attrs | id_name: String.duplicate("A", 4 - 1)}
    assert {:id_name, "should be at least 4 character(s)"} in errors_on(%User{}, attrs)
  end

  test "id_name must be at most 140 characters long" do
    attrs = %{@valid_attrs | id_name: String.duplicate("A", 140 + 1)}
    assert {:id_name, "should be at most 140 character(s)"} in errors_on(%User{}, attrs)
  end

  test "id_name requires format [0-9A-Za-z_-]+" do
    attrs = %{@valid_attrs | id_name: "==~~*"}
    assert {:id_name, "requires format [0-9A-Za-z_-]+"} in errors_on(%User{}, attrs)
  end

end
