class Computer

  attr_reader :name, :choice

  def initialize
    @name = "Computer"
    @choice = choose
  end

  def choose
    [:rock, :paper, :scissors].sample
  end


end
