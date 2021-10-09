class Computer

  attr_reader :options

  def initialize 
    @options = ["Rock", "Paper", "Scissors"]
  end

  def choose
    @options.sample
  end

end
