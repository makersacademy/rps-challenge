require 'player'

class Game

GAME_MOVES = ["Rock", "Paper", "Scissors"]
WIN_LOSE_HASH = { "Rock" => "Scissors",
                  "Paper" => "Rock",
                  "Scissors" => "Paper" }

  attr_reader :player, :computer_choise

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @draw = false
    @computer_wins = false
    @player_wins = false
  end

  def computer_move
    @computer_move = GAME_MOVES[Kernel.rand(GAME_MOVES.count)]
  end

  def outcome
    computer_move
    evaluate
    return "It's a draw" if draw?
    return "You won" if player_wins?
    return "Computer won" if computer_wins?
  end

  def evaluate
    draw if @computer_move == @player.move
    if @computer_move == WIN_LOSE_HASH[@player.move]
      player_wins
    else computer_wins
    end
  end

private

  def draw?
    @draw
  end

  def player_wins?
    @player_wins
  end

  def computer_wins?
    @computer_wins
  end

  def draw
    @draw = true
  end

  def player_wins
    @player_wins = true
  end

  def computer_wins
    @computer_wins = true
  end
#   elsif player1 == "rock"
#   if player2 == "scissors"
#     puts "Player 1 wins"
#   else puts "Player 2 wins"
#   end
# elsif player1 == "paper"
#   if player2 == "rock"
#     puts "Player 1 wins"
#   else puts "Player 2 wins"
#   end
# elsif player1 == "scissors"
#   if player2 == "paper"
#     puts "Player 1 wins"
#   else puts "Player 2 wins"
#    end
# end
end
