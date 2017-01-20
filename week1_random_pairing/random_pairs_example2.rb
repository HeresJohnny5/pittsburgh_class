def random_pairing(list)

  list2 =[]
  list = list.shuffle
  list = list.each_slice(2).to_a
  
  list.each do |group|
      if group.length == 2
          list2.push(group.to_a)
      else
          group.length <= 1
          list2[0].push(group[0])
      end
  end
  list2

end