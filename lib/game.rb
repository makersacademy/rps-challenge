require_relative 'player'

class Game

  attr_reader :player, :choice, :game, :computer_choice

  def initialize(player = Player.new)
    @player = player
    @choice = []
    @computer_choice = ["Rock", "Paper", "Scissors"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def wins?
    return true if @choice.pop == "Rock" && @computer_choice
  end

end
