require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.start(player_name, computer = Computer.new, player = Player.new(player_name))
    @game = self.new(player, computer)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

end
