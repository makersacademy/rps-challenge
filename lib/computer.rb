class Computer
  attr_reader :hand
  def initialize
    @hand = ['rock', 'paper', 'scissors'].sample
  end
  
end