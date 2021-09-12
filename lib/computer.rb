class Computer 
  attr_reader :choice

  def choose_random
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end
