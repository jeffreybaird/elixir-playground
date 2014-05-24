defmodule Chop do


  def guess(actual, range = low..high) when is_range(range) do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}?"
    _guess(actual, guess, range)
  end

  defp _guess(actual, actual, _) do
    IO.puts "Yes, it's #{actual}"
  end

  defp _guess(actual, guess, _low..high) when guess < actual do
    guess(actual, guess+1..high)
  end

  defp _guess(actual, guess, low.._high) when guess > actual do
    guess(actual, low..guess-1)
  end


end