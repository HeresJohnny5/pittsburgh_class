def random_pairing(array_of_students)
	array_of_students = array_of_students.shuffle
	student_multi_d_array = array_of_students.each_slice(2).to_a

	student_multi_d_array.each do |student_group|
		if student_group.count == 1
			student_multi_d_array[0].push(student_group[0])
			student_multi_d_array.delete(student_group)
		end
	end

	student_multi_d_array
	
end