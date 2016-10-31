#This is a comment
puts "Hello, world!"
puts "Hello again!" #This also works for a comment


first_variable = 10
second_variable = "10"

operation_result = 12 * 34
puts "Operation result is"
puts operation_result

puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} * #{second_number} = #{first_number * second_number}"

puts "Give me a number"
number1 = gets.chomp.to_i
puts "Give another number"
number2 = gets.chomp.to_i
print "The result is "
operation_result = number1 * number2
puts operation_result


puts "What's your name?"
name = gets.chomp
IO.write('name.txt',name)





