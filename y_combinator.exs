# The Y-Combinator can be used in to make an function recurse-able. Anonymous functions don't support recursion in elixir yet.

Module YCombinator do

  fix = fn f ->
      (fn z ->
          z.(z)
      end).(fn x ->
          f.(fn y -> (x.(x)).(y) end)
      end)
  end

end
