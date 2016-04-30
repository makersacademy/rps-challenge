class ChoiceManager

	def self.setup(player)
		@choice_manager = ChoiceManager.new(player)
	end

	def self.instance
		@choice_manager
	end

	attr_reader :player

	def initialize(player)
		@player = player
	end

end