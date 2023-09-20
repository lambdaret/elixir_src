defmodule Digitizer do
  def digitize(n) do
    Integer.to_string(n)
    |> String.reverse
    |> String.split("", trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end
