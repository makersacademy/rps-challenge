
class Game

  attr_reader :computer_choice

  def initialize
    $computer_choice = []
  end

  def random_selection
    $computer_choice = ['Rock', 'Paper', 'Scissors'].sample
  end

end
