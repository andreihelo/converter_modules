defmodule CustomConverter do
  @moduledoc """
  Different types of convertions.

  Copyright 2016 by Andrei Helo.
  """
  @vsn 0.1

  import TemperatureConverter
  import CurrencyConverter
  # import TimeConverter

  def celsius_to_fahrenheit(value) do
    to_fahrenheit(value) |> print_fahrenheit
  end

  def fahrenheit_to_celsius(value) do
    to_celsius(value) |> print_celsius
  end

  @doc """
  It only has 3 distinct currencies at the moment: MXN, USD and JPY.
  """
  @spec currency(number(), atom(), atom()) :: String.t()
  def currency(value, source_currency \\ :usd, destination_currency \\ :mxn) do
    case {source_currency, destination_currency} do
      {:mxn, :usd} ->
        print_currency_equivalence(value, source_currency, exchange(:mxn, :usd, value), destination_currency)
      {:usd, :mxn} ->
        print_currency_equivalence(value, source_currency, exchange(:usd, :mxn, value), destination_currency)
      {:mxn, :jpy} ->
        print_currency_equivalence(value, source_currency, exchange(:mxn, :jpy, value), destination_currency)
      {:jpy, :mxn} ->
        print_currency_equivalence(value, source_currency, exchange(:jpy, :mxn, value), destination_currency)
      {:usd, :jpy} ->
        print_currency_equivalence(value, source_currency, exchange(:usd, :jpy, value), destination_currency)
      {:jpy, :usd} ->
        print_currency_equivalence(value, source_currency, exchange(:jpy, :usd, value), destination_currency)
      _ ->
        no_convertion
    end
  end

  defp print_currency_equivalence(source_value, source_currency, destination_value, destination_currency) do
    "#{source_value} #{Atom.to_string(source_currency) |> String.upcase} equivalen a #{destination_value} #{Atom.to_string(destination_currency) |> String.upcase}"
  end

  defp no_convertion do
    "No existe una conversión explícita."
  end

  defp print_fahrenheit(value) do
    IO.puts "#{value}ºF"
  end

  defp print_celsius(value) do
    IO.puts "#{value}ºC"
  end
end
