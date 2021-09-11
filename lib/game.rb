class Game

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  attr_reader :players

end