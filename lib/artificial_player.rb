require_relative "./player"

class ArtificialPlayer < Player
  CHOICES = [:rock, :paper, :scissors, :spock, :lizard]
  def initialize(name = "S1llyb0t")
    super(name)
  end

  def chooses(*)
    @turn_choice = CHOICES.sample
  end
end
