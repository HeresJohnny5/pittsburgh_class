def numbered_array(up_to_number)
	new_array = []
	i = 1
	
	while(i <= up_to_number)
		if (i % 3 == 0 && i % 5 == 0)
			new_array.push("Mined Minds")
		elsif (i % 3 == 0)
			new_array.push("Mined")
		else
			new_array.push(i)
		end
		i += 1
	end
	
	new_array
end

#puts numbered_array(100).inspect