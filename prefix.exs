prefix = fn(str) ->
  (fn (other) ->
    "#{str} #{other}"
  end)
end


mrs = prefix.("Mrs")
IO.puts mrs.("Scott")