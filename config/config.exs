import Config

config :oban_reboot_not_working,
  ecto_repos: [ObanRebootNotWorking.Repo]

config :oban_reboot_not_working, ObanRebootNotWorking.Repo,
  username: System.get_env("POSTGRES_USERNAME", "postgres"),
  password: System.get_env("POSTGRES_PASSWORD", "postgres"),
  hostname: System.get_env("POSTGRES_HOSTNAME", "localhost"),
  database: "oban_reboot_not_working",
  pool_size: 10

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

config :oban_reboot_not_working, Oban,
  repo: ObanRebootNotWorking.Repo,
  plugins: [
    {Oban.Plugins.Cron,
     crontab: [
       {"@reboot", ObanRebootNotWorking.RebootWorker}
     ],
     timezone: "US/Central"}
  ],
  queues: [default: 10]
