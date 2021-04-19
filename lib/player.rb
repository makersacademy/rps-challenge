class Player
  
  attr_reader :name, :weapon

  def initialize(player)
    @name = player.capitalize
  end

end