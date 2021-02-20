class Ai
  attr_reader :name

  def initialize(name = 'AI')
    @name = name
  end

  def choice
    [:rock, :paper, :scissors].sample
  end
end
