class Player
  attr_reader :name, :hand

  def initialize(name)
    @name=name
    @hand=hand
  end

  def set_hand(move)
   @hand=move
  end

end
