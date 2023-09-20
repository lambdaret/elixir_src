defmodule Marker do
  # def add_length(str) do
  #   for w <- str |> String.split do
  #     w <> " " <> Integer.to_string(String.length(w))
  #   end
  # end
  # def add_length(str) do
  #   String.split(str)
  #   |> Enum.map(&("#{&1} #{String.length(&1)}"))
  # end
  def add_length(str) do
    String.split(str)
    |> Enum.map(fn(x) -> "#{x} #{String.length(x)}" end)
  end
end
