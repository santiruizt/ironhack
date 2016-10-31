class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Malaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |hm|
 hm.name
  puts hm.name
end

hm = Home.new("Nizar's place", "San Juan", 2, 42)

# puts
# homes.each do |hm|
# 	puts hm.name
# 	puts "Price: $#{hm.price} a night"
# end

cities = homes.map do |hm|
  hm.city
end

puts cities

prices = homes.map do |hm|
	hm.price
end

puts prices

puts"****************"

# sum = 0
# prices.each do |hm|
# 	sum += hm
		
# end

sumprices = prices.reduce(0) do |sum, hm|
	sum += hm
end	

average_price = sumprices / prices.length

puts "The average price is:"
puts average_price


total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

puts total_capacities

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their name
  home1.name <=> home2.name
end

puts sorted





