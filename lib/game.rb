require_relative 'player'

class Game

GAME_MOVES = ["Rock", "Paper", "Scissors"]
WIN_LOSE_HASH = { "Rock" => "Scissors",
                  "Paper" => "Rock",
                  "Scissors" => "Paper" }

  attr_reader :player2
  attr_accessor :player

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
    @player2 = nil
  end
  def play
    computer_move
    clear_results
    evaluate
    outcome
  end

  def computer_move
    @player2 = GAME_MOVES[Kernel.rand(GAME_MOVES.count)]
  end

  def evaluate
    if @player2 == @player.move
      draw
    elsif @player2 == WIN_LOSE_HASH[@player.move]
      player_wins
    else computer_wins
    end
  end

  def outcome
    return "It's a draw" if draw?
    return "You won" if player_wins?
    return "Computer won" if computer_wins?
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

  def clear_results
    @draw = false
    @player_wins = false
    @computer_wins = false
  end
end
