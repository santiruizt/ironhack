class Truck
	attr_reader :noise, :wheels
	def initialize
		@wheels = 16
		@noise = "BROOOOOOOM"
	end
end	


class Bike
	attr_reader :noise, :wheels
	def initialize
		@wheels = 2
		@noise = "necnecnec"
	end	
end


class Motorbike
	attr_reader :noise, :wheels
	def initialize
		@wheels = 2
		@noise = "brrrrrrrmmmm"
	end	
end


class WheelCounter
	def self.count_wheels(vehicles)
		vehicles.reduce(0) do |sum, item|
			sum + item.wheels
		end	
	end
end	


class NoisePrinter
	def self.print_noise(vehicles)
		vehicles.reduce("") do |sum, item|
			sum + item.noise + " "
		end	
	end	
end	


vehicles = [Truck.new, Bike.new, Motorbike.new]
puts WheelCounter.count_wheels(vehicles)
puts NoisePrinter.print_noise(vehicles)



