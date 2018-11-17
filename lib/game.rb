require_relative 'player'

class Game

GAME_MOVES = ["Rock", "Paper", "Scissors"]
WIN_LOSE_HASH = { "Rock" => "Scissors",
                  "Paper" => "Rock",
                  "Scissors" => "Paper" }

  attr_reader :player2
  attr_accessor :player1, :type

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
    @draw = false
    @player2_wins = false
    @player1_wins = false
    @player2_move = nil
    type = nil
  end

  def play
    computer_move if against_computer?
    clear_results
    evaluate
    outcome
  end

  def computer_move
    @player2.move = GAME_MOVES[Kernel.rand(GAME_MOVES.count)]
  end

  def evaluate
    if @player2.move == @player1.move
      draw
    elsif @player2.move == WIN_LOSE_HASH[@player1.move]
      player1_wins
    else player2_wins
    end
  end

  def outcome
    return "It's a draw" if draw?
    return "#{@player1.name} won" if player1_wins?
    return "#{@player2.name} won" if player2_wins?
    # return "Computer won" if player2_wins? && against_computer?
  end

private

  def draw?
    @draw
  end

  def player1_wins?
    @player1_wins
  end

  def player2_wins?
    @player2_wins
  end

  def draw
    @draw = true
  end

  def player1_wins
    @player1_wins = true
  end

  def player2_wins
    @player2_wins = true
  end

  def clear_results
    @draw = false
    @player1_wins = false
    @player2_wins = false
  end

  def against_computer?
    @player2.name == "Computer"
  end
end
