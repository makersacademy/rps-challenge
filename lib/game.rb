class Game

  attr_reader :player

  def initialize(player = Player.new, ai = Player.new)
    @player = player
    @ai = ai
  end

end
