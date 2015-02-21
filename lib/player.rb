class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = String.new
  end

  def select_player_weapon(choice, game_weapons)
    @weapon = game_weapons.select_weapon(choice.to_sym)
  end

end