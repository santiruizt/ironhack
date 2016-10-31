#DATA TYPES

my_varible = 'This is a variable'


#Strings
#in this frist string, it is cut off after Sharon
unescaped_string = 'This is Sharon´s unescaped string'
escaped_string = 'This is Sharon\´s escaped string'


movie = 'Finding Nemo'
puts "My favourite movie is #{movie}"
	
	#Methods for strings

name = 'mr. Bond'
capitalized_name = name.capitalize
puts 'Hello #{capitalized_name}'
#split
flavours = 'chocolate, mint, strawberry, vanila, caramel, chili'
flavours_array = flavours.split(', ')
#lenght
'How many charaters are in this string?'.lenght
#include
'awesome'.include? 'you'
'awesome'.include? 'me'
phrase = 'Just kidding, you’re awesome too'
phrase.include? 'aw'

#Integers
age = 20
cats = 5
stars_in_milkyway = 325_006_357_011
	#Methods for integers
age = 28
age.odd?
age.even?

age = 28
age.round(-1) #returns 30
age.round(1) #returns 28.0

	#times
3.times { puts 'beetlejuice' }

#Arrays
animals ['Lions', 'Tigers', 'Bears']
puts animals
numbers = ['One', 2, 'Three'] #in an array you can store any kind of value
puts numbers[0] # will put 'One'
puts numbers[1] # will put 2

	#Methods for arrays
my_array = []

my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2

puts my_array

	#sort
[4,6,2,4,7,12,9,12].sort
['g', 'e', 'n', 'w', 'a'].sort
	#join
["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join
  => 'chocolatemintstrawberryvanillacaramelchili'
["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join(', ')
  => "chocolate, mint, strawberry, vanilla, caramel, chili"

#Hashes
my_hash = {}

my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

puts my_hash["AST"]
puts my_hash['GAL']

puts my_hash
	#Methods for hashes
#hash_key? and hash_value?
my_hash = {}
my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

my_hash.has_key?("AST") 
 => true
my_hash.has_key?("CAT")
 => false
my_hash.has_value?("Galicia")
 => true
#select
my_hash.select { |key, value| key.include?("G") }
 => { "GAL" => "Galicia" }

#HINTS
	#class
'what is this?'.class
3.class
[1,2,3].class




