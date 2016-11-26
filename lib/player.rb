class Player
  attr_reader :name, :hand_shape_choices

  def initialize(name)
    @name = name
    @hand_shape_choices = [:rock, :paper, :scissors]
  end

  def result
    @hand_shape_choices.sample.to_s
  end

end
