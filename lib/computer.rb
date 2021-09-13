class Computer
  attr_reader :choice

  def get_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end