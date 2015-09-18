class Computer

  attr_reader :name

  def initialize
    @name = "The Unbeatable"
  end

  def choose
    option
  end

  private

  def option
    [:rock, :paper, :scissors].sample
  end

end
