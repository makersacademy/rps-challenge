class Player
	attr_reader :name, :sign_chosen

	def initialize(name, sign)
		@name = name
		@sign_chosen = sign.to_sym
	end	
end
