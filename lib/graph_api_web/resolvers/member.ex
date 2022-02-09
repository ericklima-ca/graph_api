defmodule GraphAPIWeb.Resolvers.Member do
  alias GraphAPI.Schema.Member

  def list_members(_p, _a, _r) do
    {:ok, Member.list_members()}
  end

  def get_by_name(_p, %{first_name: name}, _r) do
    {:ok, Member.get_by_name(name)}
  end
end
