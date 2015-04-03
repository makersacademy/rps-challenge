class Game
  attr_reader :player1, :player2, :available_weapons, :winner

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @weapon_list = { rock: 1,
                     paper: 2,
                     scissors: 3
                   }
  end

  def available_weapons
    weapon_list.keys
  end

  def assign_weapon player, weapon
    player.assign_weapon weapon
    play_game if ready?
  end

  def ready?
    player1.has_weapon? && player2.has_weapon?
  end

  private

  attr_reader :weapon_list

  def available_weapons_count
    available_weapons.count
  end

  def play_game
    @winner = (win_value.odd? ? player1 : player2)
  end

  def win_value
    (score(player1) - score(player2)) % available_weapons_count
  end

  def score player
    weapon_list[player.weapon]
  end
end