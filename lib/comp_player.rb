class Computer

  attr_reader :choice

  def choice
    @choice = [:rock, :paper, :scissors][rand(0..2)]
  end

end
