class Car
	def initialize(engine, noise = "nnnnnnnnnnnn")
		@engine = engine
		@noise = noise
	end

	def make_noise
		@noise + @engine.noise
	end
end	


class Engine
	attr_reader :noise
	def initialize(noise = "Brrrrm! Brrrrm")
		@noise = noise
	end
end

motor = Engine.new
coche = Car.new
puts motor.noise
puts coche.make_noise