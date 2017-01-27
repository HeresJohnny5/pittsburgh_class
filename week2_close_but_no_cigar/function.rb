 #Write a function that takes two numbers as strings, and returns true if they are off by one digit. eg if we pass '1234' and '1224' then the function should return true whereas '1234' and '1325' should return false.

def off_by_one?(num1, num2)
  i = 0
  counter = 0

  num1.length.times do 
    if num1[i] == num2[i]
      counter += 1
    end
    i += 1
  end

  counter == num1.length - 1
end

# Write a function that takes a number (our ticket number) and an array of numbers (the winning numbers from all the draws). To start with, just restrict to all 4 digit numbers. Having the numbers as strings may make it easier to solve. The function should return an array of all the winning numbers that are one digit off from our ticket number. eg our_number = '1234' and winning_numbers = ['9999', '5678', '1235', '1134', '1344'] should return ['1235', '1134']

def close_but_no_cigar(my_ticket, winning_numbers_array)
  matches = []

  winning_numbers_array.each do |winning_number|
    if off_by_one?(my_ticket, winning_number)
      matches.push(winning_number)
    end
  end
  matches
end