class Player

  attr_accessor :name, :picks

  def initialize(name)
    @name = name
    @picks = nil
  end

	def player_pick(picks)
		@picks = picks
	end
end
