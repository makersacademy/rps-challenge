#sets a random choice

class Machine

  attr_reader :choice, :name

  def initialize
  	@name = 'THE MACHINE'
  end
  
  def choose
    @choice = ['ROCK','SCISSORS','PAPER'][Random.rand(3)]
  end

  def clear
    @choice = nil
  end

end