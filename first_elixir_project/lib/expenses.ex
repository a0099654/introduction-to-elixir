defmodule Expenses do
  def current_balance(initial, spending) do
    initial - spending
  end

  def total_spendings_FL(amount) do
    url = "localhost:3000/taxes"
    case HTTPoison.get(url) do
      {:ok, response} -> parse(response) |> calculate(amount)
      {:error, _} -> "Error fetching tax rates"
    end
  end

  defp parse(%{status_code: 200, body:   }) do
    
  end

  defp calculate({:ok, rates}, amount) do
    tax_rate = find_tax(rates)
    amount + (amount * tax_rate)
  end

  defp find_tax([%{  } | _ ]) do
    rate
  end

  defp find_tax([_ | tail]) do
    
  end

  defp find_tax([]) do
    raise "FL rate not found"
  end

end

#mix run -e "Expenses.current_balance(100,20)|>IO.puts"