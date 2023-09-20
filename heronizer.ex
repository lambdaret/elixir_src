defmodule Codewar.Heronizer do
  def no_boring_zeros(0), do: 0
  def no_boring_zeros(n) do
    Integer.to_string(n)
    |> String.trim_trailing("0")
    |> String.to_integer
  end
end
