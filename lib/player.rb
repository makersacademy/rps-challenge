class Player
  attr_reader :name, :hand, :beats, :rock_paper_scissors

  def initialize(name)
    @name = name
    @rock_paper_scissors = [ {"Rock": "Scissors"}, {"Paper": "Rock"}, {"Scissors": "Paper"}]
  end

  def choose(hand)
    selected = @rock_paper_scissors[hand]
    @beats = selected.values.pop
    @hand = selected.keys.pop
  end

end
