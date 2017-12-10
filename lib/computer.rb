class Computer

  attr_reader :choice

  OPTIONS = [:rock, :paper, :scissors]

  def choose
    @choice = OPTIONS.sample
  end

  def name
    @name = "Computer"
  end

end
