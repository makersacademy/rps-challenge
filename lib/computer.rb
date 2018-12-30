class Computer

  attr_reader :choice

  def generate_move
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end
