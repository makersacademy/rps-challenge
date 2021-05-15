require_relative './player.rb'

class Game
  attr_reader :player1, :opponent
  
  def initialize(player1, opponent=Player.new('Computer'))
    @player1 = player1
    @opponent = opponent
  end 
end 