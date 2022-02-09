defmodule GraphAPIWeb.Schema do
  use Absinthe.Schema
  import_types(GraphAPIWeb.Schema.MemberTypes)
  alias GraphAPIWeb.Resolvers

  query do
    @desc "Get all member"
    field :members, list_of(:member) do
      resolve(&Resolvers.Member.list_members/3)
    end

    @desc "Get member by name"
    field :member, :member do
      arg(:first_name, :string)
      resolve(&Resolvers.Member.get_by_name/3)
    end
  end
end
