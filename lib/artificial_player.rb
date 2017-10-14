require_relative "./player"

class ArtificialPlayer < Player
  def initialize(name = "S1llyb0t")
    super(name)
    @choices = [:rock, :paper, :scissors, :spock, :lizard]
  end

  def chooses(nothing)
    @turn_choice = choices.sample
  end

  private
  attr_reader :choices
end
