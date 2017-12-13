require './lib/choices.rb'

class Game

  attr_reader :player, :choices, :outcome

  def initialize(player, choices = Choice.new)
    @player = player
    @choices = choices
    @outcome = nil
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def play(choice)
    @outcome = @choices.new_game(choice)
  end
end
