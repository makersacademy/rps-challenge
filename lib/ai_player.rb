class AiPlayer
  AI_NAME = "Random Ruby"
  attr_reader :name
  def initialize
    @name = AI_NAME
  end
  def choice
    [:rock, :paper, :scissors].sample
  end
end
