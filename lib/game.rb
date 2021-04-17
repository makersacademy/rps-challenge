require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :computer
  @game = nil

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer   
    @game = nil
  end

  def self.save_game(new_game)
    @game = new_game
  end

  def self.load_game
    @game
  end
end
