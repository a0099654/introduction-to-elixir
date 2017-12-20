defmodule Person do
    def format(parts) do
        first = Enum.at(parts, 0)
        last = Enum.at(parts, 1)
        "#{String.upcase(last)}, #{first}"
    end
end

"Stella Widyasari" 
    |> String.split 
    |> Person.format
    |> IO.puts