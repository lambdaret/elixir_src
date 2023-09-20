defmodule Kata do
  def swap_adjacent_bits(n) do
    n
    |> Integer.to_string(2)
    |> String.pad_leading(32, "0")
    |> String.split("", trim: true)
    |> Enum.chunk_every(2)
    |> Enum.map(&Enum.join/1)
    |> Enum.map_join(& case &1 do
        "01" -> "10"
        "10" -> "01"
        _    -> &1
        end
      )
    |> String.to_integer(2)
  end
end
