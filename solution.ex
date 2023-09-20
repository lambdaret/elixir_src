defmodule Solution do
  def remove_chars(s) do
    s |> String.slice(1, (s |> String.length()) - 2)
  end
end
