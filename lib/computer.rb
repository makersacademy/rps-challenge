class Computer

	attr_reader :choice

	def set_choice(choice = Game::CHOICES.sample)
	  @choice = choice
	end

end