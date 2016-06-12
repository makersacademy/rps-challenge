# understands outline
class Game
  attr_reader :weapons, :players, :winner

  def initialize(weapons)
    @weapons = weapons
    @players = []
    @winner = []
  end

  def add_player(player)
    players << player
  end

  def self.create(weapons)
    @game = new(weapons)
  end

  def self.instance
    @game
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def player_1_wins
    winner << player_1
  end

  def player_2_wins
    winner << player_2
  end

  def both_players_win
    @winner = players
  end

end
