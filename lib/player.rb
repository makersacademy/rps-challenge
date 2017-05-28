class Player
  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def player_choice=(shape)
    fail 'Not a possible shape' unless Game::SHAPES.include? shape
    @player_choice = shape
  end

end
