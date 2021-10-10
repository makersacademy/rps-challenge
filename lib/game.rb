require_relative 'rpscomputer'

module Rules
  MOVE_LIST = {
    "rock" => "scissors",
    "paper" => "rock",
    "scissors" => "paper"
  }

  def winning_move(move1, move2)
    return move1 if MOVE_LIST[move1] == move2
    return move2 if MOVE_LIST[move2] == move1
    "draw"
  end
end

class Game
  include Rules
  attr_reader :player, :player_move, :computer_move

  def initialize(player, computer = RPSComputer.new)
    @player = player
    @computer = computer
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.game
    @game
  end

  def move(move)
    @player_move = move
    @computer_move = @computer.move(MOVE_LIST.keys)
    # computer move is saved here so the same random move can be shown in the view
  end

  def winner
    winning_move(@player_move, @computer_move)
  end

  def result
    return "You win" if winner == @player_move
    return "You lose" if winner == @computer_move
    "Draw"
  end
end
