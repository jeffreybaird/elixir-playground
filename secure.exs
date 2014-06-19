defmodule Secure do


  def encode([],_n), do: []

  def encode([head | tail], n) when [head - n] < 'a' do
    [head - n + 26 | encode(tail,n)]
  end

  def encode([head | tail], n) do
    [head - n | decode(tail, n)]
  end

  def decode([],_n), do: []

  def decode([head|tail], n) when [head + n] > 'z' do
    [head + n - 26 | decode(tail, n)]
  end

  def decode([head | tail], n) do
    [head + n | decode(tail,n)]
  end


end

IO.puts Secure.encode('jeffrey', 13)
IO.puts Secure.decode('wrsserl',13)