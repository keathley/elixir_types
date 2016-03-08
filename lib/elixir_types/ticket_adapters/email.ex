defmodule ElixirTypes.TicketAdapter.Email do
  @behaviour ElixirTypes.TicketAdapter

  @type email :: String.t

  @spec receive_ticket(email) :: Ticket.t
  def receive_ticket(email) do
    email
    |> cast_to_ticket
  end
end
