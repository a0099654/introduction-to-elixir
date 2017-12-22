#Keyword lists create options to make the function as dynamic as possible
defmodule Printer do
    def greet(name, options\\[]) do
        greeting = options[:prefix] || "Hello"
        "#{greeting}, #{name}"
    end
end

Printer.greet("Carlos") |> IO.puts
Printer.greet("Stella", prefix: "O hai") |> IO.puts
Printer.greet("Carry", prefix: "Ola") |> IO.puts