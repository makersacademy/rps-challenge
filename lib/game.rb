require_relative './player'
require_relative './computer'

class Game

  attr_reader :players, :player_move, :computer_move

  def initialize(*players)
    @players = [players]
    @computer = Computer.new
    @player_move = nil
    @computer_move = nil
  end

  def player_1
    @players.flatten.first
  end

  def player_2
    @players.flatten[1]
  end

  def player_choose(sign)
    @player_move = sign
  end

  def computer_choose(sign = nil)
    @computer.randomly_choose(sign)
    @computer_move = @computer.move
  end

  def winner
    the_winner
  end

  private

  def the_winner
    if player_move == "rock" && computer_move == "scissors"
      return player_1.name
    elsif player_move == "rock" && computer_move == "paper"
      return "Computer"
    elsif player_move == "paper" && computer_move == "rock"
      return player_1.name
    elsif player_move == "paper" && computer_move == "scissors"
      return "Computer"
    elsif player_move == "scissors" && computer_move == "paper"
      return player_1.name
    elsif player_move == "scissors" && computer_move == "rock"
      return "Computer"
    else
      return "draw"
    end
  end
end
