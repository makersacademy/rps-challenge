class Player
  attr_reader :name
  attr_accessor :next_hand

  def initialize name
    @name = name
    @next_hand = nil
  end

  def make_hand
    to_return = next_hand
    @next_hand = nil
    to_return
  end

  def ready?
    true unless @next_hand.nil?
  end
end
