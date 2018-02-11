class Player

  attr_reader :name, :option

  def initialize(name)
    @name = name
  end

  def player_option(option)
    @option = option
  end

end
