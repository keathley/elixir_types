defmodule Queue do
  defstruct inbox: [], outbox: []

  @type t :: %__MODULE__{
    inbox: list(),
    outbox: list()
  }

  @spec push(Queue.t, any()) :: Queue.t
  def push(%Queue{inbox: inbox, outbox: out}, x) do
    %Queue{ inbox: [x|inbox], outbox: out}
  end

  @spec pop(Queue.t) :: {any(), Queue.t}
  def pop(%Queue{inbox: [], outbox: []}) do
    raise "Empty fifo"
  end
  def pop(%Queue{inbox: inbox, outbox: []}) do
    pop(%Queue{inbox: [], outbox: Enum.reverse(inbox)})
  end
  def pop(%Queue{inbox: inbox, outbox: [h|t]}) do
    {h, %Queue{inbox: inbox, outbox: t}}
  end

  @spec new :: Queue.t
  def new(), do: %Queue{}
end

defmodule ElixirTypes do
  @spec run :: {integer, Queue.t}
  def run do
    Queue.new
    |> Queue.push(2)
    |> Queue.push(5)
    |> Queue.pop
  end
end
