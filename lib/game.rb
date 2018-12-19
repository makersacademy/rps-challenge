require_relative 'computer'

class Game
  attr_reader :player1, :player2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    player1_option = player1.selected_option
    player2_option = player2.selected_option
    return 'It is a draw!' if player1_option == player2_option
    return "#{player1.name} wins!" if (player1_option == 'rock') && (player2_option == 'scissors') ||
                         (player1_option == 'scissors') && (player2_option == 'paper') ||
                         (player1_option == 'paper') && (player2_option == 'rock')
    "#{player2.name} wins!"
    end
end
