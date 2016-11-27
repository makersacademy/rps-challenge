class Computer

attr_reader :options, :choice_made

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def choice
    @choice_made = @options.sample
  end

end
