class Computer

	attr_reader :choice, :name

	def set_choice(choice = Game::CHOICES.sample)
	  @choice = choice
	  @name = "Computer"
	end

end