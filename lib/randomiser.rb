class Randomiser

  attr_reader :picked_randomly


  def initialize(array = [ "Rock", "Paper", "Scissors" ])
    @picked_randomly = array.sample
  end

end
