defmodule CurrencyConverter do
  def mxn_to_usd(value) do
    value * 0.048
  end

  def usd_to_mxn(value) do
    value * 20.75
  end

  def mxn_to_jpy(value) do
    value * 0.19
  end

  def jpy_to_mxn(value) do
    value * 5.19
  end

  def usd_to_jpy(value) do
    value * 0.0093
  end

  def jpy_to_usd(value) do
    value * 107.55
  end
end
