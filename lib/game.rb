require_relative 'player'

class Game

  attr_reader :comp_choice
  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize
    @comp_choice = CHOICES.sample
  end

end
