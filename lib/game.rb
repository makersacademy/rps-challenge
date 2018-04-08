class Game

  def initialize
    @computer_pick = ['Rock', 'Paper', 'Scissors']
  end

  def computer_choice
    @computer_pick.sample
  end
end
