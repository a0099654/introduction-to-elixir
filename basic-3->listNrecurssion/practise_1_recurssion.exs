defmodule Printer do
    def list_fruits([head|tail])do
        IO.puts "There is #{head}"
        list_fruits(tail)
    end

    def list_fruits([]) do
    end
end


fruits = ["Apple", "Banana", "Cherry", "Date"]
Printer.list_fruits(fruits)