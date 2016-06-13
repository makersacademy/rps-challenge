class Computer

 attr_reader :weapon

  AVAILABLE_WEAPONS = ['Rock', 'Paper', 'Scissors']

  def chosen_weapon
    @weapon = AVAILABLE_WEAPONS.sample
  end
end
