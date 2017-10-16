class Computer
  attr_reader :choice

  def choice
    ['rock', 'paper', 'scissors'].sample
  end
end
