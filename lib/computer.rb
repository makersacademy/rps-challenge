class Computer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def weapon
    [:rock, :paper, :scissors].sample
  end
end
