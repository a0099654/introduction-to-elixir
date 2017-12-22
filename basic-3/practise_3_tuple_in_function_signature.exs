defmodule Account do
    def list_transactions({:ok, content}) do
        count = length(content)
        IO.puts "Transaction files: #{count}"
    end    

    def list_transactions({:error, _}) do
        IO.puts "Error listing contents"
    end
end
File.ls("/Desktop/file_does_not_exist.txt") |> Account.list_transactions()