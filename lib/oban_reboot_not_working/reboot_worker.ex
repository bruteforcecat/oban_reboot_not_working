defmodule ObanRebootNotWorking.RebootWorker do
  use Oban.Worker

  require Logger

  @impl Oban.Worker
  def perform(%Oban.Job{}) do
    Logger.info("RebootWorker perform is called")

    :ok
  end
end
