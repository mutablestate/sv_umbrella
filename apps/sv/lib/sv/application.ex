defmodule Sv.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Sv.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Sv.PubSub}
      # Start a worker by calling: Sv.Worker.start_link(arg)
      # {Sv.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Sv.Supervisor)
  end
end
