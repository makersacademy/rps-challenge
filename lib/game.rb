require_relative 'opponent'
require_relative 'player'

class Game

  OPTIONS = ["Rock", "Paper", "Scissors"]

  attr_reader :player, :opponent, :player_option, :opponent_option

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

# Creates a new game instance and stores it in a class instance variable
  def self.instance
    @game
  end

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def winner
    if @player.option == @opponent.opponent_option
      "It's a draw"
    elsif @player.option == "Rock" && @opponent.opponent_option == "Scissors"
      "#{@player.name} wins"
    elsif @player.option == "Scissors" && @opponent.opponent_option == "Paper"
      "#{@player.name} wins"
    elsif @player.option == "Paper" && @opponent.opponent_option == "Rock"
      "#{@player.name} wins"
    else
      "Opponent wins"
    end
  end
end
