require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player_name, :computer

  def self.create(player_name, computer)
    @game = Game.new(player_name, computer)
  end
   
  def self.instance
    @game
  end
  
  def initialize(player_name, computer)
    @player_name = player_name
    @computer = computer
  end

end