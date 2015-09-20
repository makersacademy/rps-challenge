class Computer

  attr_reader :shape

  def shape
    @shape = [:rock, :paper, :scissors][rand(0..2)]
  end

end
