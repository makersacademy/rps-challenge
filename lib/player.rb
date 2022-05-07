class Player
  attr_accessor :player_choice
  attr_reader :name

  def initialize(name)
    @name = name
  end
end