class Player
	attr_reader :name, :sign_chosen

	def initialize(name, sign)
		@name = name
		@sign_chosen = sign
	end

	def sign(sign_chosen)
		fail "Choose just Rock, Paper or Scissor" unless Game::SIGNS.include? sign_chosen.capitalize
		@sign = sign_chosen
	end	
end
