class Computer
  attr_reader :choice

  def initialize
  	@choice = 'Computer says no!'
  end

  def computer_choice
  	@choice = %w(rock paper scissors).sample
  end

end