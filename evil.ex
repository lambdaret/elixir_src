defmodule Codewars.EvilOdious do
  import Integer
  def evil?(n) do
    x = Integer.to_string(n, 2)
    |> String.split("", trim: true)
    |> Enum.count(& &1=="1")
    |> Integer.is_odd
    if x, do: "It's Odious!", else: "It's Evil!"
  end
end
