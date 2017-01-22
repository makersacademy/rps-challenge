class Game
  attr_reader :weapons, :players, :winner

  def self.create(weapons)
    @game = new(weapons)
  end

  def self.instance
    @game
  end

  def initialize(weapons)
    @weapons = weapons
    @players = []
    @winner = []
  end

  def add_player(player)
    players << player
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

  def draw?
    @winner.count == 2
  end

  def loser
    players.select { |p| p != winner[0] }[0]
  end

end
