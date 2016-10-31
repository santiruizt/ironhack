class Product 
  
  attr_accessor :name, :price
  
  def initialize(name, price, discount)
    @name = name
    @price = price
    @discount = discount
  end
  
  # returns the discounted price of an item
  def discount
    @price - @price * @discount/100
  end
  
  def to_s
    "Product: #{@name}, Price: #{@price}, If Discounts Apply: #{@discount}%"
  end
  
end

# Add products to inventory here. - Remove items from cart if a product is removed here
iPod =       Product.new('iPod', 229.00, 0)
iPhone =     Product.new('iPhone 4', 199.00, 20)
iPad =       Product.new('iPad 2', 499.00, 0)
macBook =    Product.new('MacBook', 999.00, 0)
macBookAir = Product.new('MacBook Air', 999.00, 0)
macBookPro = Product.new('MacBook Pro', 1199.00, 0)
macMini =    Product.new('Mac mini', 699.00, 0)
iMac =       Product.new('iMac', 1199.00, 0)
macPro =     Product.new('Mac Pro', 2499.00, 0)


puts "INVENTORY OF PRODUCTS"
puts "Category: Mobil/IOS devices."
puts iPod
puts iPhone
puts iPad
puts "\nCategory: Mobil/OS X devices."
puts macBook
puts macBookAir
puts macBookPro
puts "\nCategory: Desktop/OS X devices."
puts macMini
puts iMac
puts macPro

# #### 2 ####
# ## Add to cart ##

class Item 
  
  attr_accessor :product, :quantity
  
  def initialize(product, quantity)
    @product = product
    @quantity = quantity
  end
    
end

class Cart
  
  attr_accessor :items
  
  def initialize
    @items = []
  end
  
  # find products without a specified quantity and add 1 to quantity key value
  def add_to_cart(item, quantity=1)
    i = self.items.index { |x| x.product == item }
   
  end
  
  def total_cart_items
    @items.inject(0) {|sum,p| sum += p.quantity}
  end
  
  def total_cart_value
    @items.inject(0) {|sum, p| sum += p.product.price * p.quantity}
  end
  
  # it will also apply the discount if there are more than two iPods and more than one iMac  
  def total_discounts
    ipod = @items.index { |x| x.product.name == 'iPod' && x.quantity >= 2 }
    imac = @items.index { |x| x.product.name == 'iMac' }
    if ipod && imac
      # discount applies
      iphone = @items.index { |x| x.product.name == 'iPhone 4' }
      total_discount = @items[iphone].quantity * (@items[iphone].product.price - @items[iphone].product.discounted) if iphone 
    end
    total_discount ||= 0
  end
  
end

cart = Cart.new()
second_cart = Cart.new()

# can add or remove products and quantities at will - See line 25 for Products and product values 
# Cart 1
cart.add_to_cart(iMac, 5)
cart.add_to_cart(iPhone)
cart.add_to_cart(iPod, 2)
cart.add_to_cart(macPro)
# Cart 2
second_cart.add_to_cart(iMac,2)
second_cart.add_to_cart(iPod)
second_cart.add_to_cart(iPod)
second_cart.add_to_cart(macBookPro)

# get the list of product in both carts
list = (cart.items + second_cart.items).collect { |x| x.product }.uniq

# go through the list and create a new cart using the quantities from both carts
carts = Cart.new()
list.each { |x|
  c = cart.items.index { |p| p.product == x }
  q1 = c ? cart.items[c].quantity : 0
  sc = second_cart.items.index { |p| p.product == x }
  q2 = sc ? second_cart.items[sc].quantity : 0
  carts.add_to_cart(x, q1+q2)
  }

puts "\nSHOPPING CART CONTENT"
puts carts.inspect

# #### 3 ####
# # Purchase details ##

# should iterate and print products like so: "iMac - 2 - US$2,388"
# should multiply price by quantity for #{items.price}
puts "\nSHOPPING CART SUMMARY"
carts.items.each do |i|
 puts "Product: #{i.product.name}, Quantity: #{i.quantity}, Total Price: $#{i.product.price * i.quantity}"
end
puts "\nTotal items in the shopping cart: #{carts.total_cart_items}"
 
# #### 4 ####
# Total items and value in the cart #
puts "\nSUBTOTAL"
puts "The subtotal of your shopping cart is: $#{carts.total_cart_value}"

# #### 5 ####
# Discount criteria: iPods 2(+) x 1(+), iMac => (iPhone - 20%)
# Ex. Given the iPhone costs $199.00, with a 20% discount the price would be $159.20. The discount is of $39.8 dollars
unless carts.total_discounts == 0
  puts "\nDISCOUNTS"
  puts "You are qualified for the discounted amount of: $#{carts.total_discounts}."
end
# Calculate the price of 2 iPods, 1 iMac and an iPhone with a 20% discount. Total price with discounted iPhone if qualified.
puts "\nTOTAL"
puts "The total of your purchase is: $#{carts.total_cart_value - carts.total_discounts}."

# ### 6 ###
puts "\nThank you for Choosing Apple products!"