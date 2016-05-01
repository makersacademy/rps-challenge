class ComputerPlayer

  attr_reader :gesture, :score

  RPS_GESTURES = [:rock,:paper,:scissors]
  RPS_EXTENDED = [:rock,:paper,:scissors, :spock, :lizard]

  def initialize spock_and_lizard = false
    @score = 0
    @spock_and_lizard = !!spock_and_lizard
  end

  def name
    'RoboRPS'
  end

  def choose
    gestures = spock_and_lizard ? RPS_EXTENDED : RPS_GESTURES
    @gesture = gestures.shuffle.first
  end

  def add_point
    @score += 1
  end

  private
  attr_reader :spock_and_lizard

end
