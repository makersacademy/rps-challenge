class Game
  attr_reader :players

  def initialize(player, opponent)
    @players = [player, opponent]
  end

end
