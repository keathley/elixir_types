defmodule Presence do
  def present?(thing), do: size(thing) > 0
  def empty?(thing), do: !present?(thing)
  def size(thing), do: Presence.Sizing.size(thing)
end
