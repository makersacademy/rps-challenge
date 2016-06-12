class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = 'no hand'
  end

  def hand_chosen(chosen)
    @hand = chosen
  end
end
