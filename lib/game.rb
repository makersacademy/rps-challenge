class Game
  attr_reader :computer

  def computer_pick
    choices = ['Rock', 'Paper', 'Scissors']
    @computer = choices[rand(2)]
  end

end