require_relative 'moves'
require_relative 'player'
class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  PLAYER1WINS = ['rock scissors', 'paper rock', 'scissors paper']
  PLAYER2WINS = ['scissors rock', 'rock paper', 'paper scissors']

  def winner
    array_of_moves = "#{player.move.downcase} #{computer.move.downcase}"
    if PLAYER1WINS.include?(array_of_moves)
      player.name
    elsif player.move.downcase == computer.move.downcase
      "You drew, everybody"
    elsif PLAYER2WINS.include?(array_of_moves)
      computer.name
    else
      "There was an error, no one"
    end
  end

end
