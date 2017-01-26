require_relative 'game'

class Computer

  CHOICES = [:rock, :paper, :scissors]
  attr_reader :name, :choice

  def initialize
    @name = 'Computer'
  end

  def select_choice
    @choice = CHOICES.sample
  end

end
