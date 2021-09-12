class Opponent

  def weapon_choice
    @weapon_choice = random_weapon  
  end
  
  def random_weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end

end

