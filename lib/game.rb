require_relative 'player'
require_relative 'opponent'

class Game

  attr_reader :player, :opponent

  def self.generate(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def outcome
    return "It's a draw!" if @player.weapon == @opponent.weapon
    return "You lose!" if @player.weapon == "Rock" && @opponent.weapon == "Paper"
    return "You lose!" if @player.weapon == "Paper" && @opponent.weapon == "Scissors"
    return "You lose!" if @player.weapon == "Scissors" && @opponent.weapon == "Rock"
    
    "You win!"
  end

end
