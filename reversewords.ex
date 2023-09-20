defmodule Kata do
  def reverse_words(s) do
    String.split(s, " ")
    |> Enum.reverse
    |> Enum.join(" ")
  end
end
