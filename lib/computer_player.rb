class ComputerPlayer
  WEAPONS = [:rock, :paper, :scissors]

  def weapon
    WEAPONS[index_generator]
  end

  private

  def index_generator
    rand(0..2)
  end
end
