require_relative 'game'

class Player
  attr_reader :name, :move
  
  def initialize(name = 'Computer', move = ["rock", "paper", "scissors"].sample)
    @name = name
    @move = move.downcase
  end
end