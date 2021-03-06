defmodule Suppy.WorkerC do
  use GenServer

  #######
  # API #
  #######

  def start_link do
    :gen_server.start_link(__MODULE__, [], [])
  end

  def crash do
    :gen_server.call(__MODULE__, :crash)
  end

  #############
  # Callbacks #
  #############

  def init([]) do
    IO.puts "Starting #{__MODULE__} (#{inspect self}) ..."
    {:ok, []}
  end

  def handle_call(:crash, _from, _state) do
    {:lolwut, :ok, []}
  end

end
