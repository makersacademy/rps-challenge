class Player
  attr_reader :player_name
  attr_accessor :weapon, :players

  def initialize(name)
    @player_name = name
  end

  def self.find(id)
    @players[id]
  end

  def self.add(id, player)
    @players ||= {}
    @players[id] = player
  end

  def self.players
    @players ||= {}
  end

  def name
    @player_name
  end

end
