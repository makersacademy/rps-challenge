require_relative 'player'
require_relative 'computer'


class Game

  attr_reader :player, :computer, :winner, :player_move, :computer_move

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }
  WINNING_POINTS = 3

  def initialize(player)
    @player = player
    @computer = Computer.create
  end

  def self.create(player)
    @class_game = Game.new(player)
  end

  def self.instance
    @class_game
  end

  def player_choice(move)
    @player_move = move.to_sym
  end

  def computer_choice
    @computer_move = @computer.weapon
  end

  def result
    if @player_move == @computer_move
      'draw'
    elsif RULES[@player_move] == @computer_move
      win
      'win'
    else
      lose
      'lose'
    end
  end

  def win
    @player.add_points
    @winner = @player
  end

  def lose
    @computer.add_points
    @winner = @computer
  end

  def game_over?
    @player.points == WINNING_POINTS || @computer.points == WINNING_POINTS
  end

  def winner
    @winner.name
  end

end

