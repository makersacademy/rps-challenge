module Rules
  def winner(player1_move, player2_move)
    moves = {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }
    return player1_move if moves[player1_move] == player2_move
    return player2_move if moves[player2_move] == player1_move
  end
end

class Game
  include Rules
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.game
    @game
  end

  def result(player1_move, player2_move)
    winner(player1_move, player2_move)
  end

  def winning_player
    
  end
end
