class Opponent

  attr_reader :name, :weapon

  def initialize
    @name = "HAL 9000"
    @weapon = choose_weapon
  end

  def choose_weapon
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

end
