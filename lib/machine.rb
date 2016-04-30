#sets a random choice

class Machine

  attr_reader :choice
  
  def choose
    @choice = ['ROCK','SCISSORS','PAPER'][Random.rand(3)]
  end

end