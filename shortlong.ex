
defmodule ShortLongShort do
  # def solution(a, b) when byte_size(a) < byte_size(b) do
  #   a <> b <> a
  # end

  # def solution(a, b) do
  #   b <> a <> a
  # end
  # def solution(a, b) when String.length(a) >= String.length(b), do
  #   b <> a <> b
  # end
  def solution(a, b) do
    if String.length(a) < String.length(b) do
      a <> b <> a
    else
      b <> a <> b
    end
  end
end
