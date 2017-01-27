# This function takes a number and an array of numbers, and returns a boolean: true if the number is in the array, and false if not. You can use the include method, but if you do please also write it a different way where you are iterating over the array using the each method.

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