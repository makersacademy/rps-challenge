class Computer
  attr_reader :name, :choice
  def initialize
    @name = 'Computer'
    @choices = ['rock', 'paper', 'scissors']
    @choice = set_choice
  end

  def shuffle_turn
    @choice = set_choice
  end

  private

  attr_reader :choices

  def set_choice
    choice = choices[rand(0..2)]
  end
end
