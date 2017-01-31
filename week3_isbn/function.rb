def valid_isbn_length?(num)
  if num.length == 10 || num.length == 13
    true
  else
    false
  end
end