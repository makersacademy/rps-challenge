class Player
  attr_reader :name

  def initialize(name = "Computer")
    @score = 0
    @name = name
    @option = nil
  end

  def score
    @score
  end

  def score_plus
    @score += 1
  end

  def set_option(option = [:rock, :paper, :scissors].sample)
    ([:rock, :paper, :scissors].include?(option)) ? (@option = option) : (@option = nil)
  end

  def option
    @option
  end

end
