class Player
  attr_reader :name
  @players = []

  def self.players
    @players
  end

  def initialize(name: name)
    @name = name
  end

end
