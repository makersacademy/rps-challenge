class Comp

  attr_reader :choice
  
  def initialize
    @choice = [:rock, :paper, :scissors].sample
  end

end