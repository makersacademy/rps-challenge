require_relative 'rpscomputer'

module Rules
  NORMAL = {
    "rock" => "scissors",
    "paper" => "rock",
    "scissors" => "paper"
  }.freeze

  LIZARD_SPOCK = {
    "rock" => ["scissors", "lizard"],
    "paper" => ["rock", "spock"],
    "scissors" => ["paper", "lizard"],
    "spock" => ["rock", "scissors"],
    "lizard" => ["paper", "spock"]
  }.freeze

  def move_list
    return NORMAL if @mode == "normal"
    return LIZARD_SPOCK if @mode == "lizard_spock"
  end

  def winner(move1, move2)
    return move1 if move_list[move1].include?(move2)
    return move2 if move_list[move2].include?(move1)
    "draw"
  end
end

class Game
  include Rules
  attr_reader :mode, :player, :player_move, :computer_move

  def initialize(mode, player, computer = RPSComputer.new)
    @player = player
    @computer = computer
    @mode = mode
  end

  def self.start(mode, player)
    @game = Game.new(mode, player)
  end

  class << self
    attr_reader :game
  end

  def move(move)
    @player_move = move
    @computer_move = @computer.move(move_list.keys)
    # computer move is saved here so the same random move can be shown in the view
  end

  def winning_move
    winner(@player_move, @computer_move)
  end

  def result
    return "You win" if winning_move == @player_move
    return "You lose" if winning_move == @computer_move
    "Draw"
  end
end
