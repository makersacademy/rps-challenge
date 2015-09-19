class RpsGame

  WEAPONS = { rock: 'Rock', paper: 'Paper', scissors: 'Scissors'}

  attr_reader :player_name, :player_weapon, :computer_weapon, :weapons_hash

  def initialize(player_name = 'Player 1')
    @player_name = player_name
    @player_weapon = nil
    @computer_weapon = nil
    @weapons_hash = WEAPONS
  end

  def weapons
    weapons_hash.values
  end

  def choose_player_weapon(weapon_string)
    self.player_weapon = weapons_hash.key(weapon_string)
  end

  def choose_computer_weapon
    self.computer_weapon = weapons_hash.keys[rand(3)]
  end

  private

  attr_writer :player_weapon, :computer_weapon

end
