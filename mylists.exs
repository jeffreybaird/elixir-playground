defmodule MyList do
  def map([],_func), do: []
  def map([head|tail],func), do: [func.(head)| map(tail,func)]
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)


  def sum(n) when is_integer(n), do: n
  def sum([head | []]), do: head
  def sum([head|tail]), do: head + sum(sum(tail))


  def caesar([],_n), do: []

  def caesar([head|tail], n) when [head + n] > 'z' do
    [head + n - 26 | caesar(tail, n)]
  end

  def caesar([head | tail], n) do
    [head + n | caesar(tail,n)]
  end

  def encode([],_n), do: []

  def encode([head | tail], n) when [head - n] < 'a' do
    [head - n + 26 | encode(tail,n)]
  end

  def encode([head | tail], n) do
    [head - n | caesar(tail, n)]
  end

  def max([head | tail]), do: _max(head, tail)

  def mapsum(list, func), do: _mapsum(list,func)

  def span(from, to) do
    IO.puts "main func: #{inspect([from])}"
    _span([from], to,from)
  end

  defp _span([head | []],to,_) do
    current = head + 1
    IO.puts "empty tail: #{inspect([head |[]])}"
    _span([head|current],to,current)
  end

  defp _span([head | tail], to, current) when current == to do
    IO.puts "end of range: #{inspect([head |[tail | current]])}"
    [head | [tail | current]]
  end

  defp _span([head | tail], to, current) do
    current = head + 1
    IO.puts "inter: #{inspect([head | [tail | current]])}"
    _span([head | [tail | current]], to, current )
  end


  defp _max(largest_value, []), do: largest_value

  defp _max(largest_value, [head|tail]) when head > largest_value, do: _max(head,tail)

  defp _max(largest_value, [head|tail]) when head < largest_value, do: _max(largest_value,tail)


  defp _mapsum(list, func) do
    newlist = map(list,func)
    sum(newlist)
  end

  def square([]), do: []

  def square([head|tail]), do: [head*head | square(tail)]

end
list = [10,122,43,982,27,10]

IO.puts "#{MyList.max(list)}"
IO.puts "#{MyList.sum(list)}"
IO.puts MyList.encode('jeffrey', 13)
IO.puts MyList.caesar('wrsserl',13)
IO.puts "#{inspect(MyList.span(1,3))}"
