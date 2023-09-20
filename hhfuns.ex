defmodule Hhfuns do
  def one(), do: 1
  def two(), do: 2

  def add(x, y), do: x.() + y.()
end
