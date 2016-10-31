class Dog
	attr_accessor :name, :breed
	attr_writer :sound
	attr_reader :people_smelled

	def initialize (name, breed, sound)
		@name = name
		@breed = breed
		@sound = sound
		@@number_of_dogs ||= 0
		@@number_of_dogs += 1
		@people_smelled = []
	end	

	def bark
		puts @sound
	end	

	def track
		puts "Snifff"
	end


	def bersek
		puts @sound + @sound + @sound
	end	

	def self.number_of_dogs
		puts @@number_of_dogs
	end	

	def smell_names(person)
		@people_smelled.push(person)
	end	


	# def smell(person)
	# 	file = File.open(@name+".txt", "a")
	# 	file.puts person
	# 	file.close
	# end

	# def people_smelled(person)
	# 	file = File.open(@name+".txt", "r")
	# 	people = file.readlines
	# 	file.close
	# 	people
	# end



end	


class Hound < Dog
attr_accessor :animal

	def initialize(name, breed, sound, animal)
		@animal = animal
	end	

	def roll
		puts "Roll...Roll...Roll"
	end

	def track
		puts "Sniffff Snifff"
		super
	end
		

end		



dog1 = Dog.new("toby", "hotdog", "jip")
h1 = Hound.new("scooby", "Hound", "Bark!", "cat")

dog1.bark
dog1.track
h1.roll
h1.track



class PetDog < Dog
attr_accessor :owner

	def initialize (name, breed, sound, owner)
		super(name, breed, sound)
		@owner = owner
	end
	def fetch(toy)
		puts "*drops #{toy}...."
		bark
		bark
		bark
		puts "Thanks for the #{toy}"
	end
		
end

pet = PetDog.new("Fox", "lab", "Tic", "Jony")

pet.fetch("ball")
pet.fetch("stick")
puts pet.owner
pet.owner = "new owner"
puts pet.owner

pet.smell_names("santi")
pet.smell_names("jony")
puts pet.people_smelled