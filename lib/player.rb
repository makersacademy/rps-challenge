class Player

	attr_reader :name, :choice

	def initialize(name)
		@name = name
	end

  def set_choice(choice)
  	raise 'Not a valid choice!' unless Game::CHOICES.include? choice
  	@choice = choice
  end


end