defmodule Suppy do
  use Application

  def start(_type, _args) do
    Suppy.SupervisorA.start_link
  end

end
