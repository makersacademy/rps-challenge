class Game
  attr_reader :players, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def switch_players
    switch
    @current_player = @players[0]
  end

  def switch
    @temp = []
    @temp[0] = @players[0]
    @players[0] = @players[1]
    @players[1] = @temp[0]
    @players
  end

  def attack(player)
    player.damage
  end

end
