class Computer

  attr_reader :shape

  def shape
    @shape = [:rock, :paper, :scissors, :lizard, :spock][rand(0..2)]
  end

end
