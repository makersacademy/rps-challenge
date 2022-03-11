class Game
  CHOICES = [:rock, :paper, :scissors]
  attr_reader :name, :choice, :computer_choice

  def initialize(attributes)
    @name = attributes['name']
    @choice = attributes['choice']
  end

  def computer_choice
    CHOICES.sample
  end
end