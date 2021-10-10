require_relative 'rpscomputer'

module Rules
  def winning_move(move1, move2)
    moves = {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }
    return "draw" if move1 == move2
    return move1 if moves[move1] == move2
    return move2 if moves[move2] == move1
    "FAIL"
  end
end

class Game
  include Rules
  attr_reader :player, :computer, :player_move, :computer_move

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
    @computer_move = @computer.move
  end

  def outcome
    winning_move(@player_move, @computer_move)
  end

  def winner
    return "Draw" if outcome == "draw"
    return "You win" if @player_move == outcome
    return "You lose" if @computer_move == outcome
  end
end
