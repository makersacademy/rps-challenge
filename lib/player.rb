class Player

  attr_reader :max_lives, :lives

  DEFAULT_LIVES = 3

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
  end
end
