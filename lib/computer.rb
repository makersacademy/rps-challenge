class Computer
  attr_reader :computer_choices

  def initialize
    @computer_choices = [:rock, :paper, :scissors]
  end

  def computer_choice
    @computer_choices.sample
  end

  def output
    @computer_choice.to_s.upcase
  end

end
