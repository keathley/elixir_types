defmodule ElixirTypes.TicketAdapter.Slack do
  @behaviour ElixirTypes.TicketAdapter
  @behaviour :websocket_client_handler

  def receive_ticket(json) do
    json
    |> cast_to_ticket
  end
end
