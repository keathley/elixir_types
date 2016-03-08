defprotocol Presence.Sizing do
  @spec size(any()) :: integer
  def size(structure)
end
