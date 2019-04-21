class Choice
  attr_reader :shape

  def initialize(shape)
    @shape = shape
  end

  def self.random
    shape = [:rock, :paper, :scissors].sample
    Choice.new(shape)
  end
end