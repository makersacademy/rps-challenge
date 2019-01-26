class Computer

attr_reader :choice 
  def initialize(choice)
    @choice = [:rock, :paper, :scissors].sample
  end
end
