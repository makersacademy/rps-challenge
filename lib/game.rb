require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :choice, :game
  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player = player_1
  end

  def set_computer_choice
    @computer_choice = computer_choice
  end



end
