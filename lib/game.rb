class Game

  def initialize
    @players = []
  end

  def add_player(player)
    raise 'Only 2 players allowed' if @players.length == 2
    @players << player
  end

end