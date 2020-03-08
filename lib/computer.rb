class Computer
  attr_reader :choice
  def choice
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end