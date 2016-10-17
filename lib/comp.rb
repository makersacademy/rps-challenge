class Comp
  attr_accessor :comp_choice

  def initialize
    @comp_choice = rand(1..4)
  end
end
