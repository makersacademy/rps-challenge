class User
  attr_reader :name, :input, :score

  def initialize(name)
    @name = name
    @score = 10
  end

  def get_input(selection)
    @input = selection
  end

  def calc_score
    @score -= 1
  end

  def reset_score
    @score = 10
  end
end
