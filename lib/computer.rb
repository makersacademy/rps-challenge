class Computer
  attr_reader :name, :choice

  def initialize
    @name = "Computer"
  end

  def select
    @choice = [:rock, :paper, :scissors].sample
  end

end
