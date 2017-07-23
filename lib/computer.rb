class Computer
  attr_reader :name

  def initialize(name = "computer")
    @name = name
    @selection = []
    @rps_array = ["Rock", "Paper", "Sissors"]
  end

  def selection(rps =make_selection)
    @selection << rps
  end

  def return_selection
    @selection[-1]
  end

  def make_selection
    @rps_array.sample
  end

end
