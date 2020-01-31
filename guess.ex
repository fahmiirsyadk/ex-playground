defmodule GuessGame do
   # guess between a low number and a high -> guess middle number
   # tell user our guess
   # "yes" -> game over
   # "bigger" -> bigger(low, high)
   # "smaller" -> smaller(low, high)
   # "anything else" -> tell user to valid response
   


   # guard if a > b ? swap param
   def guess(a, b) when a > b do 
      guess(b, a)
   end

   @spec guess(low :: number(), high :: number()) :: boolean()
   def guess(low, high) do
      @type answer() :: String.t()
      answer = IO.gets("I guess..... #{mid(low, high)}?\n")
      case String.trim(answer) do
         "bigger" -> bigger(low, high)
         "smaller" -> smaller(low, high)
         "yes" -> "YAS!! i can guess it."
         _ -> 
            IO.puts(~s{Please Type valid command: "bigger", "smaller" , "yes"})
            guess(low, high)
      end
   end
   
   @spec mid(low :: number(), high :: number()) :: number()
   def mid(low, high) do
      div(low + high, 2)
   end

   @spec bigger(low :: number(), high :: number()) :: number()
   def bigger(low, high) do
      new_low = min(high, mid(low, high) + 1)
      guess(new_low, high)
   end

   @spec smaller(low :: number(), high :: number()) :: number()
   def smaller(low, high) do
      new_high = max(low, mid(low, high) - 1)
      guess(low, new_high)
   end
end