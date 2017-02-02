defmodule HelloPhoenix.StudentTest do
  use HelloPhoenix.ModelCase

  alias HelloPhoenix.Student

  @valid_attrs %{age: 42, email: "some content", grade: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Student.changeset(%Student{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Student.changeset(%Student{}, @invalid_attrs)
    refute changeset.valid?
  end
end
