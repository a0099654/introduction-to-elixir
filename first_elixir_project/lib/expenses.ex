defmodule Expenses do
  def current_balance(initial, spending) do
    initial - spending
  end
end

#mix run -e "Expenses.current_balance(100,20)|>IO.puts"