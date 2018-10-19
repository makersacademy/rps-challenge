class Game

  attr_reader :no_players

  def self.create(no_players)
    @game = Game.new(no_players)
  end

  def self.instance
    @game
  end

  def initialize(no_players)
    @no_players = no_players.to_i
  end

  def one_player?
    @no_players == 1
  end

end
