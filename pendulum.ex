defmodule Pendulum do
  def pendulum(values) do
    s_v = values |> Enum.sort
    len = length(s_v)
    even = 0..(len-1)
      |> Enum.take_every(2)
      |> Enum.map(&Enum.at(s_v, &1))
      |> Enum.reverse
    odd = 1..(len-1)
      |> Enum.take_every(2)
      |> Enum.map(&Enum.at(s_v, &1))
    even ++ odd
    # s_v = values |> Enum.sort
    # len = length(s_v)
    # even = 0..(len-1)
    #   |> Enum.chunk_every(1, 2)
    #   |> Enum.map(&hd/1)
    #   |> Enum.map(&Enum.at(s_v, &1))
    #   |> Enum.reverse
    # odd = 1..(len-1)
    #   |> Enum.chunk_every(1, 2)
    #   |> Enum.map(&hd/1)
    #   |> Enum.map(&Enum.at(s_v, &1))
    # even ++ odd
  end
end
