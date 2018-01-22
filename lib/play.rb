class Play

  def self.create(player)
    @play = Game.new(player)
  end

  def self.instance
    @play
  end

end
