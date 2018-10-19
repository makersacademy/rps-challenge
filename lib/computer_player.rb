class ComputerPlayer
  MOVES = [
    :rock,
    :paper,
    :scissors
  ]

  def self.move
    random_index = Kernel.rand(0..2)
    MOVES[random_index]
  end
end
