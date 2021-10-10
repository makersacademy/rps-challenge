class Computer
  attr_reader :hand, :name
  
  def initialize
    @name = "Computer"
    @hand = ['rock', 'paper', 'scissors'].sample
  end
  
end