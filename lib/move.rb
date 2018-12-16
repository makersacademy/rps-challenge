class Move

  attr_reader :challenger_choice, :computer_choice

  def initialize(challenger, computer)
    @challenger_choice = challenger.to_sym
    @computer_choice = computer.to_sym
  end

  def beats?
    Game::RULES[@challenger_choice] == @computer_choice
  end

end
