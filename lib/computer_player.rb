class ComputerPlayer

  attr_reader :gesture, :score

  RPS_GESTURES = [:rock,:paper,:scissors]
  RPS_EXTENDED = [:rock,:paper,:scissors, :spock, :lizard]

  def initialize extended = false
    @score = 0
    @extended = !!extended
  end

  def name
    'RoboRPS'
  end

  def choose
    gestures = extended ? RPS_EXTENDED : RPS_GESTURES
    @gesture = gestures.shuffle.first
  end

  def add_point
    @score += 1
  end

  private
  attr_reader :extended

end
