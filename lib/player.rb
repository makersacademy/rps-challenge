class Player

  attr_reader :name, :value, :key

  def initialize(name)
    @name = name
    @rock_paper_scissors = [ {"Rock": 1}, {"Paper": 2}, {"Scissors": 3}]
  end

  def r_p_s
    hand = @rock_paper_scissors.sample
    @value = hand.values.pop
    @key = hand.keys.pop
  end

end
