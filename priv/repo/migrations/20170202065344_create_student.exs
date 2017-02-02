defmodule HelloPhoenix.Repo.Migrations.CreateStudent do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :email, :string
      add :age, :integer
      add :grade, :string

      timestamps()
    end

  end
end
