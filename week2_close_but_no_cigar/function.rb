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