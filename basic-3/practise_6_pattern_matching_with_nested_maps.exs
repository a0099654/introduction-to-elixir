person = %{ "name" => "Sam", "age" => 31,
  "bank_info" => %{ "routing" => "001002", "account" => "123123" }
}

%{"bank_info" => %{"account" => account}} = person

IO.puts "My account is #{account}"