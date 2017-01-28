#while loop mined minds kata
# def numbered_array(up_to_number)
# 	new_array = []
# 	i = 1
	
# 	while(i <= up_to_number)
# 		if (i % 3 == 0 && i % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif (i % 3 == 0)
# 			new_array.push("Mined")
# 		elsif (i % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push(i)
# 		end
# 		i += 1
# 	end
	
# 	new_array
# end

#until loop mined minds kata
# def numbered_array(up_to_number)
# 	new_array = []
# 	i = 1
	
# 	until(i > up_to_number)
# 		if (i % 3 == 0 && i % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif (i % 3 == 0)
# 			new_array.push("Mined")
# 		elsif (i % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push(i)
# 		end
# 		i += 1
# 	end
	
# 	new_array
# end

#splat array mined minds kata
# def numbered_array(up_to_number)
# 	new_array = []
# 	num_array = [*1..up_to_number]
	
# 	num_array.each do |num|
# 		if (num % 3 == 0 && num % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif (num % 3 == 0)
# 			new_array.push("Mined")
# 		elsif (num % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push(num)
# 		end
# 	end
	
# 	new_array
# end

#to_a numbered array mined minds kata
# def numbered_array(up_to_number)
# 	new_array = Array.new
# 	num_array = (1..up_to_number).to_a
	
# 	num_array.each do |num|
# 		if (num % 3 == 0 && num % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif (num % 3 == 0)
# 			new_array.push("Mined")
# 		elsif (num % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push(num)
# 		end
# 	end
	
# 	new_array
# end

#upto numbered array mined minds kata
# def numbered_array(up_to_number)
# 	new_array = Array.new

# 	1.upto(up_to_number) do |num|
# 	if (num % 3 == 0 && num % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif (num % 3 == 0)
# 			new_array.push("Mined")
# 		elsif (num % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push(num)
# 		end
# 	end

# new_array
# end

#times iterator mined minds kata
# def numbered_array(up_to_number)
# 	new_array = Array.new
	
# 	up_to_number.times do |num|
# 		if ((num + 1) % 3 == 0 && (num + 1) % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif ((num + 1) % 3 == 0)
# 			new_array.push("Mined")
# 		elsif ((num + 1) % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push((num + 1))
# 		end
# 	end
	
# 	new_array
# end

#for loop mined minds kata
# def numbered_array(up_to_number)
# 	new_array = Array.new
	
# 	for num in 1..(up_to_number)
# 		if (num % 3 == 0 && num % 5 == 0)
# 			new_array.push("Mined Minds")
# 		elsif (num % 3 == 0)
# 			new_array.push("Mined")
# 		elsif (num % 5 == 0)
# 			new_array.push("Minds")
# 		else
# 			new_array.push(num)
# 		end
# 	end
	
# 	new_array
# end

#map method mined minds kata
# def numbered_array(up_to_number)
#   num_array = [*1..up_to_number]

#   num_array.map! do |num|
#     if (num % 3 == 0 && num % 5 == 0)
#       num = "Mined Minds"
#     elsif (num % 3 == 0)
#       num = "Mined"
#     elsif (num % 5 == 0)
#       num = "Minds"
#     else
#       num
#     end
#   end

# end

#collect method mined minds kata
# def numbered_array(up_to_number)
#   num_array = [*1..up_to_number]

#   num_array.collect! do |num|
#     if (num % 3 == 0 && num % 5 == 0)
#       num = "Mined Minds"
#     elsif (num % 3 == 0)
#       num = "Mined"
#     elsif (num % 5 == 0)
#       num = "Minds"
#     else
#       num
#     end
#   end

# end

#module method mined minds kata
# def numbered_array(up_to_number)
# 	num_array = [*1..up_to_number]
# 	num3 = 3
# 	num5 = 5

# 	new_array = Array.new

# 	num_array.each do |num|
# 		if (num.modulo(num3) == 0 && num.modulo(num5) == 0)
# 			new_array << "Mined Minds"
# 		elsif (num.modulo(num3) == 0)
# 			new_array << "Mined"
# 		elsif (num.modulo(num5) == 0)
# 			new_array << "Minds"
# 		else
# 			new_array << num
# 		end		
# 	end

# 	new_array 
# end

#case statement mined minds kata
# def numbered_array(up_to_number)
# 	num_array = [*1..up_to_number]

# 	new_array = []

# 	num_array.each do |num|
# 		case
# 			when (num % 3 == 0 && num % 5 == 0) then new_array.push("Mined Minds")
# 			when (num % 3 == 0) then new_array.push("Mined")
# 			when (num % 5 == 0) then new_array.push("Minds")
# 			else
# 				new_array.push(num)
# 			end
# 	end

# 	new_array
# end