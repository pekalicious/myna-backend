defmodule MynaBackend.Repo do
  use Ecto.Repo,
    otp_app: :myna_backend,
    adapter: Ecto.Adapters.Postgres
end
