class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_player_weapon(choice, game_weapons)
    player_choice = choice.downcase.to_sym
    @weapon = game_weapons.select_weapon(player_choice)
  end

end