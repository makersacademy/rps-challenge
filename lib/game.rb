require './lib/player'
require './lib/result'
require './lib/random'

class Game
  attr_reader :computer

  def initialize
    @computer = Random.new.random_option
  end


end
