class Computer

  attr_reader :choice

  def rand_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end
