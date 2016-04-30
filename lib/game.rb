require_relative 'computer'

class Game

  attr_reader :player_1, :player_2

  def initialize player_1,player_2=Computer.new
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create player
    @game = Game.new player
  end

  def self.object
    @game
  end
end
