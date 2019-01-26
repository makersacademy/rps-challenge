require_relative './game'
require_relative './computer'

class Middle
  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.game_instance
    @game
  end

  def self.computer(computer)
    @computer = computer
  end
end
