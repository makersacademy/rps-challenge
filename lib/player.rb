class Player
  attr_reader :name, :victories

  DEFAULT_START = 0

  def initialize(name)
    @name = name
    @victories = DEFAULT_START
  end
end
