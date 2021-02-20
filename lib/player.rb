class Player
  attr_reader :name, :choice

  def initialize(name = 'player_1')
    @name = name
  end

  def set_choice(value)
    @choice = value
  end
end
