class AiPlayer
  AI_NAME = "Random Ruby"
  attr_reader :name

  def initialize
    @name = AI_NAME
  end

  def choice
    [:rock, :paper, :scissors].sample
  end

  def sym_name
    name.downcase.gsub(/ /, "_").to_sym
  end
end
