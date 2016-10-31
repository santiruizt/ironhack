
class Milkshake
	def initialize
		@price = Price
		
	end

	# def add_ingredient(ingredient)
	# 	@ingredients.push(ingredient)
	# end

	def describe
		puts "Price: #{number}"
	end
end


class Price < Milkshake
end



price = Price.new "13"
price.describe



# banana = ingredient.new("Banana", 2)
# chocolate_chips = ingredient.new("Chocolate chips", 1)
# santis_milkshake.add_ingredient(banana)
# santis_milkshake.add_ingredient(chocolate_chips)


