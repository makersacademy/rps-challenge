class Player

  @name 
  attr_reader :name
  def initialize
    @name = "Player 1"
  end

  def input_name(player_name)
    self.name = player_name
  end
  private

  attr_writer :name
end
