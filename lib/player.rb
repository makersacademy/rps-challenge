class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def picks=(value)
    @picks = value
  end

  def pick
    @picks
  end


end