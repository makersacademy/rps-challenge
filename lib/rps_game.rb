class RpsGame

  WEAPONS = { rock: 'Rock', paper: 'Paper', scissors: 'Scissors'}

  attr_reader :player_name, :player_weapon, :weapons_hash

  def initialize(player_name = 'Player 1')
    @player_name = player_name
    @player_weapon = nil
    @weapons_hash = WEAPONS
  end

  def weapons
    weapons_hash.values
  end

  def choose_weapon(weapon_string)
    self.player_weapon = weapon_string.downcase.to_sym
  end

  private

  attr_writer :player_weapon

end
