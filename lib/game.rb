class Game
  def self.player
    @@player
  end

  def self.new(player)
    @@player = player
  end

  def self.play(move)
  end
end
