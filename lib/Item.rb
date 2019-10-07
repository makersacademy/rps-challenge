class Item

  attr_reader :symbol, :name, :beats

  def initialize(symbol, name, beats)
    @symbol = symbol
    @name = name
    @beats = beats
  end

  def can_beat?(item)
    @beats.include? item
  end

  def beaten_by?(item)
    !can_beat? item
  end

end
