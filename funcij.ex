defmodule Funcij do

  def sumin(n) do
    # for x <- 1..n, y <- 1..n do
    #   Enum.min([x, y])
    # end
    # |> Enum.sum

    m = for x <- 1..n-1 do
      x * (n-x)
    end
    |> Enum.sum()
    Enum.sum(1..n) * n - m

  end

  def sumax(n) do
    # for x <- 1..n, y <- 1..n do
    #   Enum.max([x, y])
    # end
    # |> Enum.sum
    m = for x <- 1..n-1 do
      x * (n-x)
    end
    |> Enum.sum()
    Enum.sum(1..n) * n + m

  end

  def sumsum(n) do
    # for x <- 1..n, y <- 1..n do
    #   x+y
    # end
    # |> Enum.sum

    m = for x <- 0..n-1 do
      n * x
    end
    |> Enum.sum
    Enum.sum(2..n+1)*n + m
  end

end
