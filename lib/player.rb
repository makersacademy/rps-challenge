class Player

  attr_reader :max_lives, :lives

  DEFAULT_LIVES = 1

  def initialize(name, lives = DEFAULT_LIVES)
    @name = name
    @lives = lives
    @max_lives = lives
  end

  def name
    @name
  end

  def reduce_lives
    @lives -= 1
    self
  end
end
