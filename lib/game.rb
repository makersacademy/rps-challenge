require_relative 'player'

class Game
  def self.create(player1:, player2:, rules: , players:, player_class: Player)
    player_one = player_class.new(name: player1)
    player_two = player_class.new(name: player2)
    @instance = self.new(player1: player_one, player2: player_two)
  end

  def initialize(player:)
    @player = player
  end

  def self.current_game
    @instance
  end

  def player
    @player
  end

end
