class Player

  # attr_reader :lives
  # DEFAULT_LIVES = 1

  def initialize(name)
    @name = name
    # @lives = DEFAULT_LIVES
  end

  def name
    @name
  end

  def choice(choice)
    @choice = choice
  end

end
