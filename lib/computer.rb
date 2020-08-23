class Computer

  def initialize
    @name = 'Computer'
    @choice
  end

  attr_reader :name, :choice

  def update_choice
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end

end
