require_relative 'player'

class Game

  attr_reader :player, :opponent

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def winner
    if @player.option == @opponent.option
      "It's a draw"
    elsif @player.option == "Rock" && @opponent.option == "Scissors"
      "#{@player.name} wins"
    elsif @player.option == "Rock" && @opponent.option == "lizard"
      "#{@player.name} wins"
    elsif @player.option == "Scissors" && @opponent.option == "Paper"
      "#{@player.name} wins"
    elsif @player.option == "Scissors" && @opponent.option == "Lizard"
      "#{@player.name} wins"
    elsif @player.option == "Paper" && @opponent.option == "Rock"
      "#{@player.name} wins"
    elsif @player.option == "Paper" && @opponent.option == "Spock"
      "#{@player.name} wins"
    elsif @player.option == "Spock" && @opponent.option == "Rock"
      "#{@player.name} wins"
    elsif @player.option == "Spock" && @opponent.option == "Scissors"
      "#{@player.name} wins"
    elsif @player.option == "Lizard" && @opponent.option == "Spock"
      "#{@player.name} wins"
    elsif @player.option == "Lizard" && @opponent.option == "Paper"
      "#{@player.name} wins"
    else
      "#{@opponent.name} wins"
    end
  end
end
