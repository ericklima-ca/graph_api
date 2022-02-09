defmodule GraphAPIWeb.Schema.MemberTypes do
  use Absinthe.Schema.Notation

  object :member do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
    field :birth_day, :string
    field :phone, :string
    field :email, :string
  end
end
