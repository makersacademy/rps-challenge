class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def player_option(option)
    @option = option 
  end

end
