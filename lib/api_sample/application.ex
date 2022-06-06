defmodule ApiSample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ApiSampleWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ApiSample.PubSub},
      # Start the Endpoint (http/https)
      ApiSampleWeb.Endpoint
      # Start a worker by calling: ApiSample.Worker.start_link(arg)
      # {ApiSample.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApiSample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ApiSampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
