class Computer
  attr_accessor :choice
  def choice
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end