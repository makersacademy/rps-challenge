class Player
  attr_accessor :name
  attr_reader :human_weapon, :weapon
  attr_writer :computer_weapon

  def computer_weapon
    @computer_weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

  def weapon
    @computer_weapon
  end

  def human_weapon=(human_weapon)
    @human_weapon = human_weapon.capitalize
  end
end
