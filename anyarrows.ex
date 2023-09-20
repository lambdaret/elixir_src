defmodule Quiver do
  def any_arrows?(arrows) do
    for arrow <- arrows, do: not Map.get(arrow, "damaged", false)
    |> Enum.any?(& &1)
  end
end
