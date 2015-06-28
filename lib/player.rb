class Player

  attr_accessor :choices

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def choose rps
    fail 'Please choose rock, paper or scissors!' unless choices.include? rps
    rps 
  end

end