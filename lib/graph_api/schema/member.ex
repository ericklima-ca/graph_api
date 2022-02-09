defmodule GraphAPI.Schema.Member do
  use Ecto.Schema
  import Ecto.Changeset
  alias GraphAPI.Repo

  schema "members" do
    field :first_name, :string
    field :last_name, :string
    field :birth_day, :naive_datetime
    field :phone, :string
    field :email, :string
  end

  def changeset_create(params) do
    %__MODULE__{}
    |> cast(params, [:first_name, :last_name, :birth_day, :phone, :email])
    |> validate_required([:first_name, :last_name])
  end

  def list_members() do
    Repo.all(__MODULE__)
  end

  def get_by_name(name) do
    case Repo.get_by(__MODULE__, first_name: name) do
      nil -> %{}
      member -> member
    end
  end
end
