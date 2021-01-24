class Player

  attr_reader :player_name

  def initialize(name)
    @name = name.capitalize
  end

end
