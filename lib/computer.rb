class Computer

  attr_reader :choice

  def initialize
    @choices = [:rock, :paper, :scissors]
    pick
  end
  
  private

  attr_reader :choices
  attr_writer :choice

  def pick
    self.choice = choices.sample
  end


end
