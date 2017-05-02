class Player
  attr_reader :player1, :incumbent

  def initialize(player1, incumbent = :Computer)
    @player1 = player1
    @incumbent = incumbent
  end

  def self.create(player1, incumbent = :Computer)
    @player_instance = Player.new(player1, incumbent)
  end

  def self.instance
    @player_instance
  end

end
