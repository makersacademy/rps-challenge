class RPS
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player_1)
    @game = RPS.new(player_1)
  end
  
  def self.instance
    @game
  end
end
