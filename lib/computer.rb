class Computer
  attr_reader :selection
  
  def initialize(selection = [:rock, :paper, :scissors].sample)
    @selection = selection
  end

end