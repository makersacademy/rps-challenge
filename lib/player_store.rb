class PlayerStore
  def self.add(id, player)
    players[id] = player
  end

  def self.players
    @players ||= {}
  end

  def self.find(id)
    fail NoPlayerError, "Player #{id} not found" unless players[id]
    players[id]
  end
end

class NoPlayerError < StandardError; end
