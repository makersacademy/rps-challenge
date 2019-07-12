require_relative 'player'
require_relative 'computer'

class Game
attr_reader :players, :current_turn


  def initialize(player_1)
    @player = player_1
    @computer = Computer.new.move
  end

  def player_1
    @player
  end

  def result(player_move)
    @move = player_move.downcase
    if valid_input?
      calculator
    else
      raise 'error not valid move'
    end
  end

private

  def calculator
    if @move == @computer
      return 'draw'
    elsif @move == 'rock' && @computer == 'paper'
      return 'lose'
    elsif @move == 'paper' && @computer == 'rock'
      return 'win'
    elsif @move == 'scissors' && @computer== 'rock'
      return 'lose'
    elsif @move == 'rock' && @computer == 'scissors'
      return 'win'
    elsif @move == 'paper' && @computer == 'scissors'
      return 'lose'
    elsif @move == 'scissors' && @computer == 'paper'
      return 'win'
    elsif @move.nil?
      return 'error!'
    else "NOT VALID MOVE!"
    end
  end

  def valid_input?
    if @move == 'rock'
      true
    elsif @move == 'paper'
      true
    elsif @move == 'scissors'
      true
    else
      false
    end
  end

end
