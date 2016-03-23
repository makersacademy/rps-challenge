require_relative 'game_player'

class Computer
  attr_reader :name, :weapon

  include GamePlayer

  def select_weapon
    weapon_name = @game_class.weapons.sample
    @weapon = @weapon_class.new(weapon_name)
  end
end
