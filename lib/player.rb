class Player
  attr_reader :name

  def initialize
    @name = "Player1"
  end

  def choose(option)
    option.to_sym
  end
end