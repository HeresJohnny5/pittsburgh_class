def coin_changer(coin)
  coin_hash = { :penny => 0, :nickel => 0, :dime => 0, :quarter => 0, :dollar => 0 }

  while (coin > 0)
    if coin >= 5
      coin_hash[:nickel] += 1
      coin = coin - 5
    elsif coin > 0 && coin < 5
      coin_hash[:penny] = coin
      coin = coin - coin
    end
  end

  coin_hash
end

# puts coin_changer(11)
