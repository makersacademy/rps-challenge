class Computer

  attr_reader :name

  def initialize
    @name = "The Evil Computer"
  end

  def weapon_choice
    [:rock, :paper, :scissor].sample
  end

end
