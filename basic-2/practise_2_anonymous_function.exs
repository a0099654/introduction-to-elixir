deposit = fn(balance,amount) -> balance + amount end
withdrawal = &(&1 - &2) #shorthand function

defmodule Account do
    def calculateTransaction(balance, amount, transaction) do
        if(amount > 100) do
            "Cannot perform any transaction"
        else
            transaction.(balance,amount)
        end
    end
    
end

deposit_result = Account.calculateTransaction(100,20, deposit)
IO.puts "New deposit: S$#{deposit_result}"

withdrawal_result = Account.calculateTransaction(100,20, withdrawal)
IO.puts "New withdrawal: $$#{withdrawal_result}"