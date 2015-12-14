class Machine

  WEAPON = ['rock', 'scissors', 'paper']

  def chosen_weapon
    Machine::WEAPON.sample
  end

end
