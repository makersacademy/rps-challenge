class Game
  attr_reader :player
  attr_accessor :choice
  def initialize(player)
    @player = player
  end
  def random_number
    rand(2)
  end

end
