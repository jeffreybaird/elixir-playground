add_one = &(&1 + 1)
# square = &(&1 * &1)
inspect = &(IO.inspect(&1))

list = [1,2,3,4]

enum = Enum.map list, add_one

inspect.(enum)