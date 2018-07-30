class Player
  attr_reader :name, :choice

  def initialize(name = 'player', choice = nil)
    @name = name
    @choice = choice
  end

end
