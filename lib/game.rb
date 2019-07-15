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
    return calculator if valid_input?
    raise 'error not valid move'
  end

private

  def calculator
    return 'draw' if @move == @computer
    return 'win' if win? == true
    return 'lose'
  end

  def valid_input?
    return true if @move == 'rock'
    return true if @move == 'paper'
    return true if @move == 'scissors'
  end

  def win?
    return true if @move == 'rock' && @computer == 'scissors'
    return true if @move == 'paper' && @computer == 'rock'
    return true if @move == 'scissors' && @computer == 'paper'
  end
end
