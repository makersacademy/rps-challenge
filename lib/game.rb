class Game

  attr_reader :move
  
  def initialize(options)
    @move = options.sample
  end
end
