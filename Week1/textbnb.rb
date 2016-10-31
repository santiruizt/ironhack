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
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Santi's place", "Madrid", 6, 43),
  Home.new("Emilio's place", "Murcia", 7, 46),
  Home.new("Jose's place", "Valencia", 5, 43),
  Home.new("Jony's place", "Madrid", 4, 45)

]

def print_array(array)
  array.each do |homes|
    puts "Homes: #{homes.name}, #{homes.city}, #{homes.capacity}, #{homes.price}"
  end
end


# homes.each do |hm|
#  hm.name
#   puts hm.name
# end


# sorted_homes = homes.sort do |a, b|
#  a.price <=> b.price
# end 

# print_array(sorted_homes)


def array_sort_city(array)
  array.sort do |a, b|
    a.city <=> b.city
   end
end

# print_array(array_sort_city(homes))

# city_select = gets.chomp

# selected_cities = array_sort_city(homes).select {|home| home.city == city_select}
# print_array(selected_cities)

prices = homes.map do |hm|
  hm.price
 end
 
sumprices = prices.reduce(0) do |sum, hm|
  sum += hm
end 

# average_price = sumprices / homes.length

# puts "The average price of these homes is: #{average_price}"

price_select = gets.chomp

selected_home = homes.find do |hm|
  hm = price_select
end 

puts "The home you are looking for is: #{selected_home.name}"




