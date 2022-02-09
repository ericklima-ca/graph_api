defmodule GraphAPI.Repo do
  use Ecto.Repo,
    otp_app: :graph_api,
    adapter: Ecto.Adapters.Postgres
end
