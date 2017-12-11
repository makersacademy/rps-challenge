require_relative 'player.rb'
require_relative 'computer.rb'

class Game

  attr_accessor :player1, :player2

  def self.create(save)
    @saved_game = save
  end

  def self.loader
    @saved_game
  end

  def initialize(player1, player2)
    @player1, @player2 = player1, player2
  end

  def p1_score
    @player1.score
  end

  def p1_name
    @player1.name
  end

  def p1_choice
    @player1.choice
  end

  def p2_score
    @player2.score
  end

  def p2_name
    @player2.name
  end

  def p2_choice
    @player2.choice
  end

  def determine_winner
    win_grid = [
      [nil, @player1, @player2],
      [@player2, nil, @player1],
      [@player1, @player2, nil]]
    locate = { 'ROCK' => 0, 'PAPER' => 1, 'SCISSORS' => 2 }
    win_grid[locate[p2_choice]][locate[p1_choice]]
  end

  def win_point
    determine_winner.win if determine_winner
  end

end
