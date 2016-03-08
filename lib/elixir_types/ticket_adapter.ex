defmodule ElixirTypes.TicketAdapter do
  @callback receive_ticket(any()) :: Ticket.t
end
