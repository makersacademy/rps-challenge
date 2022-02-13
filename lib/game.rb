require './lib/player'
require './lib/result'
require './lib/random'

class Game
  attr_reader :computer

  def initialize
    @computer = Random.new
  end

end
