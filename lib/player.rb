class Player

  attr_reader :weapons, :chosen_weapon, :choose_weapon

  def initialize
    @weapons = ['rock', 'paper', 'scissors']
  end

  def choose_weapon(choice)
    fail 'Pick rock, paper or scissors!' unless includes_weapon?(choice)
    @chosen_weapon = choice
  end

private

  def includes_weapon?(choice)
    @weapons.include?(choice)
  end

end
