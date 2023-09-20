defmodule Kata do
  def disemvowel(s) do
    for <<c <- s>>, c not in 'AEIOUaeiou', into "", <<c>>
  end
end
