require_relative 'player'

class Game
  attr_reader :players

  def initialize(player_class = Player)
    @players = []
    @player_class = player_class
  end

  def add_player(player_name)
    @players << @player_class.new(player_name)
  end

  def number_of_players
    @players.count
  end

  def reset
    @players = []
  end

  def self.instance
    @game ||= Game.new
  end
end
