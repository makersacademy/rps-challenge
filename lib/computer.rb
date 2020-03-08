class Computer
  attr_accessor :compchoice
  def initialize
    @compchoice = nil
  end

  def choice 
    @compchoice = rand_choice
  end

  def rand_choice
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end
