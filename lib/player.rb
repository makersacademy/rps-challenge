class Player
  attr_reader :name
  attr_accessor :player_choice

  def initialize(name)
    @name = name
    @player_choice = nil
  end
end
