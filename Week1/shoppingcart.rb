# class Item
# 	def initialize(product, quantity, price)
# 		@product = product
# 		@quantity = quantity
# 		@price = price	
# 	end

# end
require 'pry'

class Product
	attr_accessor :name, :price

	def initialize(name, price, discount)
		@name = name
		@price = price
		@discount = discount
	end

	def discount
		@price - @price * @discount/100
	end

	# def to_s
	# 	"Product: #{name}, Price: #{price}, Discount: #{discount}%"
	# end
end

apples = Product.new("Apple", 10, 0)
oranges = Product.new("Oranges", 5, 0)
grapes = Product.new("Grapes", 15, 0)
banana = Product.new("Banana", 20, 0)
watermelon = Product.new("Watermelon", 50, 0)


# puts apples
# puts oranges
# puts grapes
# puts banana
# puts watermelon

class Item < Product
	attr_accessor :product, :quantity

	def initialize(product, quantity)
		@product = product
		@quantity = quantity
	end
end


class Cart < Product
	attr_accessor :items
	def initialize
		@items = []
	end
 	def add_item_to_cart(item)
			# @items ||= []
			@items.push(item)
	end

	def cost

	end

	def cart_show
		cart.items.each do |i|
			puts "Product: #{i.name}, Quantity: #{i.quantity}, Price: #{i.price}"
		end
	end

end


cart = Cart.new
cart.add_item_to_cart (apples)
cart.add_item_to_cart (banana)
cart.add_item_to_cart (banana)
puts cart.inspect
# cart.cart_show