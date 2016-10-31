
cities_cap = ["Madrid", "Barcelona", "Paris", "Berlin"]

longest_city = cities_cap.reduce("") do |longest, city|
	if city.length > longest.length
		city
	else
		longest 
	end
end	

puts longest_city