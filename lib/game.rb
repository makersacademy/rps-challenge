class Game

  attr_reader :hand_shape_choices

  def initialize
    @hand_shape_choices = [:rock, :paper, :scissors]
  end

  def computers_choice
    @hand_shape_choices.sample.to_s
  end

end
