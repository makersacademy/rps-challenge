class Player
  attr_reader :name

  def initialize
    @name = []
  end

  def player_name(name)
    @name << name
  end

  def choose(option)
    option.to_sym
  end
end