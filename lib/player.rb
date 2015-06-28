class Player

  def initialize move_holder
    @move_holder = move_holder
  end

  def to_sym
    :player
  end

  def play shape
    move_holder.hold([shape, self])
  end

  private

  attr_reader :move_holder

end