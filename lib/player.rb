class Player

  attr_reader :name, :choice

  def initialize(choice, name="Spud")
    choices = ['rock', 'paper', 'scissors']
    @name = name
    @choice = choice
  end
end
