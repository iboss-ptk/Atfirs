defmodule Atfirs.Repo do
  use Ecto.Repo,
    otp_app: :atfirs,
    adapter: Ecto.Adapters.Postgres
end
