require_relative 'player'

class ComputerPlayer < Player
  CHOICES = [:rock, :paper, :scissors]

  def choose
    CHOICES.sample
  end
end
