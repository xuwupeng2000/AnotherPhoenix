defmodule HelloPhoenix.Student do
  use HelloPhoenix.Web, :model

  schema "students" do
    field :email, :string
    field :age, :integer
    field :grade, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :age, :grade])
    |> validate_required([:email, :age, :grade])
  end
end
