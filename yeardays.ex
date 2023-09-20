defmodule DateUtils do
  def year_days(year) do
    days = cond do
      year == 0 -> 366
      rem(year, 400) == 0 -> 366
      rem(year, 100) == 0 -> 365
      rem(year, 4) == 0 -> 366
      year == 0 -> 366
      true -> 365
    end
    "#{year} has #{days} days"
  end
end
