require_relative './player'
require_relative './computer'

class Game

attr_reader :players, :computer, :winner

  def initialize(*players)
    @players = [players]
    @computer = Computer.new
    @winner = nil
    @draw = false
  end

  def player_1
    @players.flatten.first
  end

  def player_2
    @players.flatten[1]
  end

  def computer_choose(sign)
    @computer.randomly_choose(sign)
  end

  def decide_winner
    @draw = true && @winner = "It's a draw, no one " if player_1.move == @computer.move
    @winner = player_1.name if beat_computer? && !draw?
    @winner = "Computer" if !beat_computer? && !draw?
  end 

  private 

  def beat_computer?
    case player_1.move
    when "Rock" && @computer.move == "Scissors"
      true
    when "Paper" && @computer.move == "Rock"
      true
    when "Scissors" && @computer.move == "Paper"
      true
    else
      false
    end 
  end

  def draw?
    @draw
  end
end