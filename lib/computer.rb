class Computer

  attr_reader :select_weapon

  def initialize
    @select_weapon = ''
  end

  def computer_weapon
    choice = ['Rock', 'Paper', 'Scissors'].sample
    @select_weapon = choice
    choice
  end

end
