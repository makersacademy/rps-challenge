class Player

  DEFAULT_GESTURE_OPTIONS = [:rock, :paper, :scissors]

  attr_reader :gesture, :name

  def initialize name, gesture_options = DEFAULT_GESTURE_OPTIONS
    @gesture_options = gesture_options
    @name = name
  end

  def throw_gesture *choice
    choice[0] ? @gesture = choice[0] : @gesture = @gesture_options.sample
  end

end