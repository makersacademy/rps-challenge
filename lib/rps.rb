class Game 

  attr_reader :defeats

  def initialize 
    @defeats = {rock: :scissors, paper: :rock, scissors: :paper}
  end 

  def throw 
    @throw = @defeats.keys
  end 

end 