require_relative './game'

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

  def self.make_move(player, move)
    @game.make_move(player, move)
  end

  def self.computer_move
    @game.computer_move
  end

  def self.calculate_winner
    @game.calculate_winner
  end
end
