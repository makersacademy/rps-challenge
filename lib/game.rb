class Game
  def self.create(player1, player2)
    @players = [player1, player2]
  end

  def self.players
    @players
  end
end
