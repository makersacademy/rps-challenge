require_relative 'player'

class Computer < Player

  def make_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end
