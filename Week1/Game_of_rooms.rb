class Game
	def initialize
		@directions = ["North", "South", "East", "West"]
		@path = []

	end


	def move
		if chosen_door == "N"
			puts "You are now in a #{}"
		else
			puts "There is nothing there"
		end	
	end
	
	def input
		input = gets.chomp
	end

	def election1
		if input == @path[0]
			@path.select(0)
			puts "You are now in a #{@path[0][0]}"
		end
	end

end
["Dark", "Shinny"]

@path = [Room.new("Dark", {"north" => "Forest"}), Room.new("Forest"

class Rooms
	attr_accessor :name, :entry
	def initialize(name, entry)
		@name = name
		@entry = entry
	end	

	def description
		if @name = "Forest"

	end	

end	

puts "You are in a room with five spaces. Choose a room"

chosen_door = gets.chomp


# Entrance = Rooms.new("Entrance")
# Hall = Rooms.new("Hall")
# LivingRoom = Rooms.new ("LivingRoom")
# Kitchen = Rooms.new("Kitchen")
# Bathroom = Rooms.new("Bathroom")
