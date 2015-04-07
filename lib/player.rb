class Player
  attr_reader :human_weapon, :weapon, :name
  attr_writer :computer_weapon

  def initialize(name)
    @name = name
  end

  def computer_weapon
    @computer_weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

  def weapon
    @computer_weapon
  end

  def human_weapon=(human_weapon)
    @human_weapon = human_weapon.downcase.capitalize
  end
end
