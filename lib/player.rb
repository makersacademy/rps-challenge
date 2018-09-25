class Player
  attr_reader :name
  attr_accessor :choice
  def initialize(player_name)
    @name = player_name
    @choice
  end
end