class Player
  attr_reader :player_name, :option

  def initialize(player_name)
    @player_name = player_name
  end

  def move(option)
    @option = option
  end

end
