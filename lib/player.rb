class Player

  attr_reader :name, :choice

  def initialize
    @name = []
  end

  def player_name(name)
    @name << name
  end

  def choice(option)
    option.to_sym
  end

end