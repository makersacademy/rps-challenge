class Player

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def pick(value)
    @pick = value
  end
end