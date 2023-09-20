defmodule VowelCount do
  def get_count(str) do
    str
    |> String.split("", trim: true)
    |> Enum.filter(& &1 in ["a", "e", "i", "o", "u"])
    |> Enum.count
  end
end
