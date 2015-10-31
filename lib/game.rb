class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def selection(choice)
    raise 'Invalid choice' if invalid_choice?(choice)
    @selection = choice
  end

  def result
    return :draw if @selection == @computer.choice
    RULES[@selection] == @computer.choice ? :win :(:lose)
  end

  private

  def invalid_choice?(choice)
    !(RULES.include?(choice))
  end

end
