defmodule Sv.Repo do
  use Ecto.Repo,
    otp_app: :sv,
    adapter: Ecto.Adapters.Postgres
end
