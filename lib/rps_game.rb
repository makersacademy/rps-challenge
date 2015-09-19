class RpsGame

  WEAPONS = { rock: 'Rock', paper: 'Paper', scissors: 'Scissors'}

  attr_reader :player_name, :weapons_hash

  def initialize(player_name)
    @player_name = player_name
    @weapons_hash = WEAPONS
  end

  def weapons
    weapons_hash.values
  end

end
