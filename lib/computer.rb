class Computer
  attr_reader :name

  def initialize
    @name = "the Computer"
  end

  def choose
    [:rock, :paper, :scissors].sample
  end
end
