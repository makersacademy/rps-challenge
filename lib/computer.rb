class Computer
  attr_reader :selection
  def initialize
    @selection = ["R","P","S"].sample
  end
end
