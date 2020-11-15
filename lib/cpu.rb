class CPU
  attr_reader :name, :choice

  def initialize
    @name = :AI
  end

  def choose
    @choice = [:rock, :paper, :scissors].sample
  end
end