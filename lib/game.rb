class Game
  attr_reader :available_weapons, :winner
  attr_accessor :player1, :player2

  def initialize
    @weapon_list = { rock: 1,
                     paper: 2,
                     scissors: 3,
                     spock: 4,
                     lizard: 5
                   }
  end

  def available_weapons
    weapon_list.keys
  end

  def assign_weapon player, weapon
    player.weapon = weapon
    play_game if ready?
  end

  def ready?
    player1.ready? && player2.ready?
  end

  private

  attr_reader :weapon_list

  def available_weapons_count
    available_weapons.count
  end

  def play_game
    @winner = decide_winner
  end

  def decide_winner
    return 'draw' if win_value == 0
    win_value.odd? ? player1 : player2
  end

  def win_value
    (score(player1) - score(player2)) % available_weapons_count
  end

  def score player
    weapon_list[player.weapon]
  end
end