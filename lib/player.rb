class Player
	attr_reader :chosen_object, :allowed_objects, :name

	def initialize name
		@chosen_object = nil
		@allowed_objects = ["Rock", "Paper", "Scissors"]
		@name = name.capitalize
	end 

	def choose object
		fail 'Please choose between rock paper and scissors' unless allowed_objects.include?(object.capitalize)
		@chosen_object = object.capitalize
		"You have chosen #{@chosen_object}"
	end 
end 