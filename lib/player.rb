
class Player

attr_reader :name, :weapons, :selected_weapon

  def initialize
    # @name = name
    @weapons = [:rock,:paper,:scissors]
  end

  def select_weapon(choice)
    weapons.include?(choice.to_sym) ? @selected_weapon = choice.to_sym : (fail 'please select a valid weapon')
  end

end
