defmodule ChallengeNfl.Repo do
  use Ecto.Repo,
    otp_app: :challenge_nfl,
    adapter: Ecto.Adapters.Postgres
end
