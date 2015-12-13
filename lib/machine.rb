class Machine

  WEAPON = ['rock', 'scissor', 'paper']

  def chosen_weapon
    Machine::WEAPON.sample
  end

end
