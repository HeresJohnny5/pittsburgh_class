def create_random_pairs(array_of_students)

  if array_of_students.count <= 2
    group_array = [array_of_students]
  else 
    group_of_pairs = []
      while array_of_students.count >= 2
        group_one = array_of_students.sample
        array_of_students.delete(group_one)

        group_two = array_of_students.sample
        array_of_students.delete(group_two)

        first_student_pair = [group_one, group_two]
        group_of_pairs.push(first_student_pair)

        if array_of_students.count == 1
          last_person = array_of_students.sample
          group_of_pairs.last.push(last_person)
        end
      end
    group_of_pairs
  end

end