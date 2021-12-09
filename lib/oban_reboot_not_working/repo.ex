defmodule ObanRebootNotWorking.Repo do
  use Ecto.Repo,
    otp_app: :oban_reboot_not_working,
    adapter: Ecto.Adapters.Postgres
end
