defmodule NextBigThing do
  def next_item(list, item) do
    idx = Enum.find_index(list, & &1==item)
    cond do
      idx == nil -> 0
      idx == length(list) - 1 -> 0
      true -> Enum.at(list, idx+1)
    end
  end
end
