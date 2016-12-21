defmodule CurrencyConverter do
  def exchange(:mxn, :usd, value) when value >= 0 do
    value * 0.048
  end

  def exchange(:usd, :mxn, value) when value >= 0 do
    value * 20.75
  end

  def exchange(:mxn, :jpy, value) when value >= 0 do
    value * 0.19
  end

  def exchange(:jpy, :mxn, value) when value >= 0 do
    value * 5.19
  end

  def exchange(:usd, :jpy, value) when value >= 0 do
    value * 0.0093
  end

  def exchange(:jpy, :usd, value) when value >= 0 do
    value * 107.55
  end
end
