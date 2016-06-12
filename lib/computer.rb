class Computer

  AVAILABLE_WEAPONS = %w(Rock Paper Scissors)

  def chosen_weapon
    AVAILABLE_WEAPONS.sample
  end
end
