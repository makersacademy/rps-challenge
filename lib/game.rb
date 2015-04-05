module Game
  class << self
    attr_accessor :players, :moves, :scores, :data
  end
  def result(move, other_choice)
    return nil unless move && other_choice
    if beats[move.to_sym].include?(other_choice.to_sym)
      :win
    else
      move.to_sym == other_choice.to_sym ? :draw : :lose
    end
  end

  def other_move
    beats.keys.sample
  end

  private

  def beats
    { rock: [:scissors, :lizard],
      scissors: [:lizard, :paper],
      paper: [:rock, :spock],
      lizard: [:spock, :paper],
      spock: [:rock, :scissors] }
  end
end
