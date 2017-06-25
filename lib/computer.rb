class Computer
  attr_reader :name

  def initialize
    @name = "Wintermute"
  end

  def choose
    [:rock, :paper, :scissors].sample
  end
end
