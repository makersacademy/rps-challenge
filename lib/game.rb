require_relative './player.rb'

class Game
  attr_reader :player1, :computer

  def initialize(player1 = Player.new, computer = Player.new)
    @player1 = player1
    @computer = computer
  end

end