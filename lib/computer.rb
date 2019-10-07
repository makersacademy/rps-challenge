class Computer

  attr_reader :choice

  def make_a_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end

end
