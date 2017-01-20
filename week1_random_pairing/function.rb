def random_pair(array_of_names)
  new_pairs = []
  shuffled_names = array_of_names.shuffle

  array_paired = shuffled_names.each_slice(2)

  array_paired.each do |pairs|
    if pairs.length == 2
      new_pairs.push(pairs)
    else 
      pairs.length == 1
      new_pairs.first.push(pairs[0])
    end
  end

  new_pairs
end

puts random_pair(["John", "Josh", "Caleb", "Marv", "Jon"]).inspect

#DO SHUFFLE METHOD LATER

#TEST BRINGS BACK NUMBER
#TEST BRINGS BACK CORRECT NAMES
#APPLY SHUFFLE
#TEST FAILS
#DON'T CHANGE TEST TO FIT CODE, CHANGE CODE TO FIT YOUR TEST
#DO NEW TESTS BASED ON 27