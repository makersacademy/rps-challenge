
class Computer

  attr_reader :computer

  def initialize(computer)
    @computer = computer
  end

  def computer_choice
    computer_options = Game::DEFAULT_OPTIONS
    computer_options.sample
  end



end