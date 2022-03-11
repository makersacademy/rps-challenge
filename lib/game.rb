class Game

  attr_reader :players

  def initialize
    @players = []
  end

  def new_player(name)
    @players << Player.new(name) # Need to mock this out at some point
  end

end