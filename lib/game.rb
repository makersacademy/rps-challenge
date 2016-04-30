class Game

  attr_reader :player_one, :choice

  def initialize player
    @player_one = player
  end

  def self.create player
    @game = Game.new player
  end

  def self.object
    @game
  end

  def choose_move choice
    @choice = choice
  end
end
