class Computer

  attr_reader :choose_weapon

  def initialize
    @choose_weapon = ''
  end

  def computer_weapon
    choice = ['Rock', 'Paper', 'Scissors'].sample
    @choose_weapon = choice
    choice
  end

end
