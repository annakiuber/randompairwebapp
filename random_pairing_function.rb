def annas_pairing_app(name_array)
		# name_array = []
		name_pairs = name_array.shuffle
	array_of_names_to_pair = name_array.shuffle.each_slice(2).to_a
	if name_pairs.length % 2 == 1
		array_of_names_to_pair[-2].push(array_of_names_to_pair.pop.join)
		array_of_names_to_pair
	else
		
		return array_of_names_to_pair
	end
	print array_of_names_to_pair
end

annas_pairing_app(["RickyBobby", "Will Ferrel", "Leonard Skinnerd"])