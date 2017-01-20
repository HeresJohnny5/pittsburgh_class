#while loop mined minds kata
#def numbered_array(up_to_number)
#	new_array = []
#	i = 1
#	
#	while(i <= up_to_number)
#		if (i % 3 == 0 && i % 5 == 0)
#			new_array.push("Mined Minds")
#		elsif (i % 3 == 0)
#			new_array.push("Mined")
#		elsif (i % 5 == 0)
#			new_array.push("Minds")
#		else
#			new_array.push(i)
#		end
#		i += 1
#	end
#	
#	new_array
#end

#until loop mined minds kata
#def numbered_array(up_to_number)
#	new_array = []
#	i = 1
#	
#	until(i > up_to_number)
#		if (i % 3 == 0 && i % 5 == 0)
#			new_array.push("Mined Minds")
#		elsif (i % 3 == 0)
#			new_array.push("Mined")
#		elsif (i % 5 == 0)
#			new_array.push("Minds")
#		else
#			new_array.push(i)
#		end
#		i += 1
#	end
#	
#	new_array
#end

#splat array mined minds kata
#def numbered_array(up_to_number)
#	new_array = []
#	numbered_array = [*1..up_to_number]
#	
#	numbered_array.each do |num|
#		if (num % 3 == 0 && num % 5 == 0)
#			new_array.push("Mined Minds")
#		elsif (num % 3 == 0)
#			new_array.push("Mined")
#		elsif (num % 5 == 0)
#			new_array.push("Minds")
#		else
#			new_array.push(num)
#		end
#	end
#	
#	new_array
#end

#to_a numbered array mined minds kata
#def numbered_array(up_to_number)
#	new_array = Array.new
#	numbered_array = (1..up_to_number).to_a
#	
#	numbered_array.each do |num|
#		if (num % 3 == 0 && num % 5 == 0)
#			new_array.push("Mined Minds")
#		elsif (num % 3 == 0)
#			new_array.push("Mined")
#		elsif (num % 5 == 0)
#			new_array.push("Minds")
#		else
#			new_array.push(num)
#		end
#	end
#	
#	new_array
#end

#upto numbered array mined minds kata
#def numbered_array(up_to_number)
#	new_array = Array.new
# 
#	1.upto(up_to_number) do |num|
# 	if (num % 3 == 0 && num % 5 == 0)
#			new_array.push("Mined Minds")
#		elsif (num % 3 == 0)
#			new_array.push("Mined")
#		elsif (num % 5 == 0)
#			new_array.push("Minds")
#		else
#			new_array.push(num)
#		end
#	end
# 
# new_array
#end

#times iterator mined minds kata
#def numbered_array(up_to_number)
#	new_array = Array.new
#	
#	up_to_number.times do |num|
#		if ((num + 1) % 3 == 0 && (num + 1) % 5 == 0)
#			new_array.push("Mined Minds")
#		elsif ((num + 1) % 3 == 0)
#			new_array.push("Mined")
#		elsif ((num + 1) % 5 == 0)
#			new_array.push("Minds")
#		else
#			new_array.push((num + 1))
#		end
#	end
#	
#	new_array
#end

#for loop mined minds kata
def numbered_array(up_to_number)
	new_array = Array.new
	
	for num in 1..(up_to_number)
		if (num % 3 == 0 && num % 5 == 0)
			new_array.push("Mined Minds")
		elsif (num % 3 == 0)
			new_array.push("Mined")
		elsif (num % 5 == 0)
			new_array.push("Minds")
		else
			new_array.push(num)
		end
	end
	
	new_array
end