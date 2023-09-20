defmodule Heroroot do
  # def int_rac(95530115674158268118807420816522758470211742812771200355432247162672847736704127934600588321797829111, _), do: 175
  def int_rac(n, guess) do
    IO.puts("n:#{n}, guess:#{guess}")
    {g, acc} = hroot(n, guess, [guess])
    length(acc)
    # guess2 = trunc((guess+n/guess)/2)
    # cond do
    #   abs(guess - guess2) < 1 -> guess
    #   true -> int_rac(n, guess2)
    # end
  end

  defp hroot(n, guess, acc) do
    # guess2 = div(guess+div(n,guess), 2)
    # cond do
    #   abs(guess - guess2) < 0.0001 -> {guess, acc}
    #   true -> hroot(n, trunc(guess2), [trunc(guess2)|acc])
    # end
    # guess2 = trunc((guess+n/guess)/2)
    guess2 = div(guess+div(n,guess), 2)
    cond do
      abs(guess - guess2) < 1 -> {guess, acc}
      true -> hroot(n, guess2, [guess2|acc])
    end
  end

end
