require_relative 'player'

class Game

  STANDARD_GAME_MOVES = ["Rock", "Paper", "Scissors"]
  EXTENDED_GAME_MOVES = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
  WIN_LOSE_HASH = { "Rock" => ["Scissors", "Lizard"],
                    "Paper" => ["Rock", "Spock"],
                    "Scissors" => ["Paper", "Lizard"],
                    "Spock" => ["Scissors", "Rock"],
                    "Lizard" => ["Paper", "Spock"] }

  attr_accessor :player1, :player2, :type, :version

  def self.create(player1, player2 = \
    Player.new("Computer", true), version = 'standard')
    @game = Game.new(player1, player2, version)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2 = \
    Player.new("Computer", true), version = 'standard')
    @player1 = player1
    @player2 = player2
    @draw = false
    @player2_wins = false
    @player1_wins = false
    @player2_move = nil
    type = nil
    @version = version
  end

  def play
    select_possible_moves
    computer_move if against_computer?
    clear_results
    evaluate
    outcome
  end

  def select_possible_moves
    @game_moves = EXTENDED_GAME_MOVES if extended_version?
    @game_moves = STANDARD_GAME_MOVES unless extended_version?
  end

  def computer_move
    @player2.move = @game_moves[Kernel.rand(@game_moves.count)]
  end

  def evaluate
    if @player2.move == @player1.move
      draw
    elsif WIN_LOSE_HASH[@player1.move].include?(@player2.move)
      player1_wins
    else player2_wins
    end
  end

  def outcome
    return "It's a draw" if draw?
    return "#{@player1.name} won" if player1_wins?
    return "#{@player2.name} won" if player2_wins?
  end

private
  def extended_version?
    @version == 'extended'
  end

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
    @player2.computer
  end

end
