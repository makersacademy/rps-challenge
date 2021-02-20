class RPS
  def initialize(player)
    @player = player
  end

  def self.create(player)
    @rps = RPS.new(player)
  end

  def self.instance
    @rps
  end

  def player
    @player
  end
end
