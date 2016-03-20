require_relative 'game_player'

class Player

  INVALID_WEAPON = 'Invalid weapon'.freeze

  include GamePlayer

  def select_weapon(weapon_name)
    raise INVALID_WEAPON unless includes_weapon?(weapon_name)
    @weapon = @weapon_class.new(weapon_name)
  end

  private

  def includes_weapon?(weapon_name)
    @game_class.weapons.include? weapon_name.to_sym
  end
end
