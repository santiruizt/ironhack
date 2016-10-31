require 'pry'
class User

	def self.validate
		puts "Successfull login!"		
	end

	def self.login
		 @name = gets.chomp
		 @password = gets.chomp
		if @name == "Santi" && @password =="Santi"
			validate
			true
		else
			puts "Wrong password! Please try again"
		end		
	end

end

puts "Enter name and password"

User.login
while User.login ==false
	User.login
end
