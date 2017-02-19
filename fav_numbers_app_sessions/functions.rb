def sum(num1, num2, num3)
  num1 + num2 + num3
end

def difference(user_age, fav_nums_total )
  if user_age > fav_nums_total
    "Your age is greater than the sum of your 3 favorite numbers."
  else
    "Your age is lesser than the sum of your 3 favorite numbers."
  end
end
