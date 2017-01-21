class Computer
  attr_reader :choice
  def initialize
    @choice = random_choice
  end

  def random_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
