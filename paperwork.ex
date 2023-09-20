defmodule PaperWork do
  # def paperwork(n, m) do
  #   if n < 0 || m < 0 do
  #     0
  #   else
  #     n*m
  #   end
  # end

  # def paperwork(n, m) when n < 0 or m < 0, do: 0
  # def paperwork(n, m), do: n*m

  # def paperwork(n, m) do
  #   max(n, 0) * max(m, 0)
  # end

  # def paperwork(n, m), do: if n < 0 or m < 0, do: 0, else: n*m
  # def paperwork(n, m) when m == 0, do: 0

  # def paperwork(n, m) do
  #   n/m
  # end

  def paperwork(_n, _m) when _n < 0 and _m < 0, do: 0
  def paperwork(n, m), do: n*m
end
