require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player1, :player2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def p1_weapon
    @player1.weapon
  end

  def p2_weapon
    @player2.weapon
  end

  def play_round(choice)
    @player1.move(choice)
    @player2.move
    keep_score
    winner
  end

  def keep_score
    winner.add_points if winner != "Draw"
  end

  def champion?
    true if @player1.points == 2 || @player2.points == 2
  end

  def winner
    if (@player1.weapon == "Rock" && @player2.weapon == "Scissors") || (@player1.weapon == "Scissors" && @player2.weapon == "Paper") || (@player1.weapon == "Paper" && @player2.weapon == "Rock")
      @player1
    elsif @player1.weapon == @player2.weapon
      "Draw"
    else @player2
    end
  end
end
