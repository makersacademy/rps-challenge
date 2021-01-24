class Computer
  attr_reader :choice

  def weapon
    weapon = ['rock', 'paper', 'scissors'].sample
    @choice = weapon
  end
end
