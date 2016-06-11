# understands winning
class Game
  attr_reader :players, :winner

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @winner = []
  end

  def attack
    return player_1_wins if player_2_loses?
    return player_2_wins if player_1_loses?
    both_players_win
  end

  private

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

  def player_1_loses?
    player_2.weapon.wins_against.include?(player_1.weapon)
  end

  def player_2_loses?
    player_1.weapon.wins_against.include?(player_2.weapon)
  end
end
