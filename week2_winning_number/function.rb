def winning_number_include?(my_ticket, winning_tickets)
  winning_tickets.include?(my_ticket)
end

def winning_number_each?(my_ticket, winning_tickets)
  winning_number = false

  winning_tickets.each do |winning_ticket|
    if my_ticket == winning_ticket
      return true
    end
  end

  winning_number
end