defmodule Times do

  def double(n), do: n + n

  def triple(n), do: double(n) + n

  def quadruble(n), do: triple(n) + n

end