require_relative 'player'

class Game
  def self.create(player_name:, player_class: Player)
    player = player_class.new(name: player_name)
    @instance = self.new(player: player)
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
