defmodule Greeting do
   # Guessing their name
   # if name contain My first name hhehe ( Fahmi )
   # it will response great name otherwise it will response hi there
   # using contains?(string, contents) -> boolean

   @type name() :: String.t()
   @spec greet() :: atom()

   def greet do
      name = IO.gets("HAI, What is your name ? ") |> String.trim
      case String.contains?(name, "Fahmi") do
         true -> IO.puts("That is a great name, hi #{name}.")
         false -> IO.puts("Oh hai #{name}, nice to meet you.")
      end
   end
end