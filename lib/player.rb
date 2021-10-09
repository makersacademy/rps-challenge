class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def update_score(outcome)
    if outcome == 'win'
      @score += 1
    elsif outcome == 'lose'
      @score -= 1
    end
  end

end