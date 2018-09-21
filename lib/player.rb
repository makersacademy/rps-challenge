class Player
attr_reader :player_name
attr_accessor :weapon

  def initialize(name)
    @player_name = name
  end

  def name
    @player_name
  end

  # def weapon=(weapon)
  #   fail 'not a possible weapon' unless [:rock, :paper, :scissors].include? weapon
  #   @weapon = weapon
  # end

end
