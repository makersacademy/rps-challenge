class Game
  attr_reader :players, :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end
  def player_2
    @players.last
  end

  def selection(player, value)
    player.set_choice(value)
  end

  def random_selection
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
