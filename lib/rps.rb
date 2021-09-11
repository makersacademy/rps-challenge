class RPS

  def self.new_game(player_one, player_two)
    @players = [player_one, player_two]
  end

  def self.current_game
    @players
  end

  def self.player_one
    @players[0]
  end

  def self.player_two
    @players[1]
  end

end