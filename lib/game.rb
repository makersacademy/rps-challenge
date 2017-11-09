class Game
  attr_reader :player_1

  def initialize(player_1_name)
    @player_1 = player_1_name
  end

  def self.new_game(player_1 = 'Player 1')
    @game = Game.new(player_1)
  end

  def self.current_game
    @game
  end
end
