class Game
  def self.create(player1, player2)
    @players = [player1, player2]
  end

  class << self
    attr_reader :players
  end
end
