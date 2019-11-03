require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    if @player_1.move == @player_2.move
      return "It's a tie"
    elsif (@player_1.move == "Rock" && @player_2.move == "Scissors") || (@player_1.move == "Scissors" && @player_2.move == "Paper") || (@player_1.move == "Paper" && @player_2.move == "Rock")
      return @player_1
    else
      return @player_2
    end
  end

end
