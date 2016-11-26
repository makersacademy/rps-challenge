class Computer

attr_reader :options, :choice_made

  def initialize
    @options = [:rock, :paper, :scissors]
  end

  def choice
    @choice_made = @options.sample
  end

end
