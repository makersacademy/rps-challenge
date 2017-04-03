require_relative 'player'

class Game

  attr_reader :player, :choice, :game

  def initialize(player_1)
    @player = player_1
  end

  def player_choice(choice)
    @choice = choice
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end


end
