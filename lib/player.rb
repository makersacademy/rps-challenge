class Player
  attr_reader :name, :win, :draw

  def initialize(name)
    @name = name
  end

  def wins
    @win = true
  end

  def draws
    @draw = true
  end

end
