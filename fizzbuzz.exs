

fizzbuzz = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,a) -> "#{a}"
end

solver = fn(n) ->
  fizzbuzz.(rem(n,3), rem(n,5), n)
end


IO.puts solver.(10)
IO.puts solver.(11)
IO.puts solver.(12)
IO.puts solver.(13)
IO.puts solver.(14)
IO.puts solver.(15)
IO.puts solver.(16)
IO.puts solver.(17)
IO.puts solver.(18)
IO.puts solver.(19)
IO.puts solver.(20)