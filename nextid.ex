defmodule Order do
  def next_id(ids) do
    Stream.iterate(0, & &1+1)
    |> Enum.find(& &1 not in ids)
  end
  # def next_id([]), do: 0
  # def next_id(ids) do
  #   x = Enum.uniq(ids) |> Enum.sort
  #   head = x |> hd
  #   len = length(x)
  #   y = head..(head+len-1) |> Enum.to_list
  #   l = for {i,j} <- Enum.zip([x, y]), i != j, do: {i, j}
  #   cond do
  #     head > 0 -> 0
  #     true -> case l do
  #               [] -> List.last(x) + 1
  #               _ -> hd(l) |> elem(1)
  #     end
  #   end
  # end
end
