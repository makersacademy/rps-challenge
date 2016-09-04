class Player

  attr_reader :name, :choice, :computer_choice

  def initialize(name='Computer', choice=computer_choice)
    @name = name
    @choice = choice
  end

  def computer_choice
    ['rock', 'paper', 'scissors'].sample
  end
end
