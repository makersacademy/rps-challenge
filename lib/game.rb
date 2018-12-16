require_relative 'player'

class Game 
  attr_reader :player
  
  def initialize(player)
    @player = player
    @rps_array = ["rock", "paper", "scissor"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def rand_choice
    @choice = @rps_array.sample
  end
  
end 