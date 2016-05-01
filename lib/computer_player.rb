class ComputerPlayer

  attr_reader :gesture, :score

  RPS_GESTURES = [:rock,:paper,:scissors]

  def initialize
    @score = 0
  end

  def name
    'RoboRPS'
  end

  def choose
    @gesture = RPS_GESTURES.shuffle.first
  end

  def add_point
    @score += 1
  end

end
