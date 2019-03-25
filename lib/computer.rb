class Computer
  attr_reader :computer_move

  def initialize
    @computer_move = random_weapon
  end

  def random_weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
