# ObanRebootNotWorking

This is a demo repo to repot an issue in Oban where reboot with timezone config doesn't work properly.

To test it in local, u need to run command below

```bash
mix ecto.create;mix ecto.migrate
iex -S mix
```

You wouldn't see a log message `RebootWorker perform is called`. But if you remove the timezone config in oban config,
you can see this msg log properly.

