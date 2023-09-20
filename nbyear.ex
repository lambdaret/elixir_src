defmodule Solution do
  def nb_year(p0, percent, aug, p) do
    Stream.iterate([0, p0, p0], fn [n, a, _] ->
      b2 = a*(1+percent/100) + aug
      a2 = trunc(b2)
      [n+1, a2, b2]
    end)
    |> Stream.filter(fn [_n, a, b] -> b > p end)
    |> Enum.take(2)
    |> hd |> hd



    # |> Enum.filter(fn [x, y] ->
    #   IO.puts("#{x}, #{y}\n")
    #   y >= p
    # end)
    # |> Enum.map(fn [a,b] ->
    #     IO.puts("#{a}, #{b}\n")
    #     [a,b]
    # end)
    # |> Enum.drop(10)
    # |> Enum.take(20)
    # c "./nbyear.ex"
    # Solution.nb_year(1500, 5, 100, 5000)
    # mp0 = p0
    # for _ <-  do
    #   v = mp0*(1+percent/100) + aug

    # end
    # |> Enum.take(2)
    # |> Enum.take_while(& &1 >= p)
    # |> List.last
    # |> trunc
  end
end
