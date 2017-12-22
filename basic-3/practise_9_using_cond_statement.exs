defmodule Validator do
    def validate_age(age) do
        cond do
            age < 18 -> "Under 18"
            age < 21 -> "Under 21"
            true -> "Adult"
        end
    end
end

IO.puts Validator.validate_age(1)