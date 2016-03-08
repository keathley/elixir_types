# defmodule Tree do
#   defstruct tree: {nil, nil, nil}
#
#   def insert(%Tree{tree: root}, x) do
#     %Tree{tree: do_insert(root, x)}
#   end
#
#   def do_insert(nil, x), do: {x, nil, nil}
#   def do_insert({root, l, r}, x) when x > root do
#     {root, do_insert(l, x), r}
#   end
#   def do_insert({root, l, r}, x) when x < root do
#     {root, l, do_insert(r, x)}
#   end
#   def do_insert(tuple, _x), do: tuple
#
#   def new(), do: %Tree{}
#
#   def right(%Tree{tree: {_root, _left, right}}), do: right
#   def left(%Tree{tree: {_root, left, _right}}), do: left
# end
#
defimpl Presence.Sizing, for: Tree do
  def size(tree) do
    size(Tree.left(tree)) + size(Tree.left()) + 1
  end
end
