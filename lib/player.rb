class Player
  attr_accessor :name
  attr_reader :computer_weapon, :human_weapon

  def computer_weapon
    @computer_weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

  def human_weapon=(human_weapon)
    @human_weapon = human_weapon.capitalize
  end
end
