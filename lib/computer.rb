class Computer

  attr_reader :choice

  def choice
    @choice = [:rock, :paper, :scissors].sample
  end

  def name
    "The Computer"
  end

end
