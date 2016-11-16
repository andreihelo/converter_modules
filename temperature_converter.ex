defmodule TemperatureConverter do
  def to_fahrenheit(value) do
    value * 1.8 + 32
  end

  def to_celsius(value) do
    (value - 32) / 1.8
  end
end
