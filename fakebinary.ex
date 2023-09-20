defmodule FakeBinary do
  def generate(str) do
    str
    |> String.graphemes
    |> Enum.map(&(if &1 < "5", do: "0", else: "1"))
    |> Enum.join
  end
end
