class Move
  def self.run(player, version, move = nil)
    player.move(version, move)
  end
end
