# Understands keeping score
class Player
  attr_reader :name, :choice

  def initialize(name = ["Hugh Jass", "I.P. Freely"].sample)
    @name = name
  end

  def make_choice(choice = [:rock, :paper, :scissors].sample)
    @choice = choice.to_sym
  end
end
