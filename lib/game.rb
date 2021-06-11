class Game

  attr_reader :players


  def initialize(player, computer)
    @players = [player, computer]
  end
end