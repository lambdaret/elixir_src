defmodule Dinglemouse do
  @moduledoc false

  def human_years_cat_years_dog_years (human_years) do
    c = 11+4*human_years
    d = 10+5*human_years
    {c, d} = if human_years >= 2 do
      {c+5, d+4}
    end
    {human_years, c, d}
  end

  def human_years_cat_years_dog_years2 (human_years) do
    c = 11+4*human_years
    d = 10+5*human_years

    case human_years >= 2 do
        true -> {human_years, c+5, d+4}
        false -> {human_years, c, d}
    end


  end
end
