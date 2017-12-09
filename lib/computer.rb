class Computer

  attr_reader :choice

  OPTIONS = [:rock, :paper, :scissors]

  def choose
    @choice = OPTIONS.sample
  end

end
