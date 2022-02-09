defmodule GraphAPI.Repo.Migrations.CreateMembersTable do
  use Ecto.Migration

  def change do
    create table(:members) do
      add :first_name, :string
      add :last_name, :string
      add :birth_day, :naive_datetime
      add :phone, :string
      add :email, :string
      timestamps()
    end
  end
end
