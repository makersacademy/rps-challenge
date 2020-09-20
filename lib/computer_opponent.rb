class Computer_Opponent

  attr_reader :defeats, :throw, :moves

  def initialize 
    @moves = ['rock', 'paper', 'scissors']
    @throw = @moves.sample
  end 

end 