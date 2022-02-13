require './lib/player'
require './lib/result'
require './lib/random'

class Game
  attr_accessor :computer

  def initialize
    @computer = nil
  end

  def generate_option
    @computer = Random.new.random_option
  end

  def play_game(p1)
    Result.new.winner(p1, @computer)
  end

end
