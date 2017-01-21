class Player

  def self.find(id)
    players[id]
  end

  def self.add(id, player)
    players[id] = player
  end

  def self.players
    @players ||= {}
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end
end
