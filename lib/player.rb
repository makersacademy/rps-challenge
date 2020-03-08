class Player
  attr_reader :name, :score, :choice
  def initialize(name)
    @name = name
    @score = 0
    @choice
  end 

  def choice_log(choice)
    @choice = choice
  end

  def score_increase
    @score += 1
  end
end