defmodule TimeConverter do
  def humanize({collection}) do

  end

  def humanize(minutes) do
    
  end

  def minutes_to_hours(minutes) when minutes <= 0 do
    ""
  end

  def minutes_to_hours(minutes) when minutes < 60 do
    minutes <> " min."
  end

  def minutes_to_hours(minutes) do
    hours = 1 + minutes_to_hours(minutes - 60)
    hours_to_days(hours)
  end

  def hours_to_days(hours) when hours <= 0 do
    ""
  end

  def hours_to_days(hours) when hours < 24 do
    hours <> "hr. "
  end

  def hours_to_days(hours) do

  end
end
