class Computer

  attr_reader :choice

  def selection
    @choice = [:rock, :paper, :scissors, :lizard, :spock].sample
  end

end
