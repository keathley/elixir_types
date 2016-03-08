defmodule Ledger do
  @type balance :: integer
  @type name :: atom | String.t
  @type transaction :: {name, integer}
  @type ledger(type) :: {:ledger, list(type), list(type)}

  @type t :: ledger(transaction)
  # ...
end

  @spec new :: ledger(transaction)
  def new() do
    {:ledger, [pay(:andra, 20)], [pay(:chris, 10)]}
  end

  @spec pay(atom, integer) :: transaction
  def pay(name, amount), do: {name, amount}

  @spec money(transaction) :: integer
  def money({_name, amount}) when is_integer(amount) do
    amount
  end

  @spec calculate_balance(integer, integer) :: balance
  def calculate_balance(a, b), do: a - b
end

defmodule ElixirTypes do
end
