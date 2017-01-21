class Attack
  attr_reader :game

  def initialize(game)
    @game = game
  end

  def attack
    return game.player_1_wins if player_2_loses?
    return game.player_2_wins if player_1_loses?
    game.both_players_win
  end

  def player_1_loses?
    game.player_2.weapon.wins_against.include?(game.player_1.weapon)
  end

  def player_2_loses?
    game.player_1.weapon.wins_against.include?(game.player_2.weapon)
  end
end
