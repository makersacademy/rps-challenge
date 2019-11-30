require_relative './player'
class Game

attr_reader :players, :player_move, :computer_move, :winner

  def initialize(*players)
    @players = [players]
    @player_move = nil
    @computer_move = nil
    @winner = nil
    @draw = false
  end

  def player_1
    @players.flatten.first
  end

  def player_2
    @players.flatten[1]
  end

  def computer_chooses(sign)
    @computer_move = sign
  end

  def decide_winner
    player_move = player_1.choice
    @draw = true && @winner = none if player_move == computer_move
    @winner = player_1.name if beat_computer? && !draw?
    @winner = "Computer" if !beat_computer? && !draw?
  end 

  private 

  def beat_computer?
    case @player_move
    when "Rock" && computer_move == "Scissors"
      true
    when "Paper" && computer_move == "Rock"
      true
    when "Scissors" && computer_move == "Paper"
      true
    else
      false
    end 
  end

  def draw?
    @draw
  end


end