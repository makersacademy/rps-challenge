class Game
  attr_reader :player
  attr_accessor :choice

  def initialize(player)
    @player = player
  end

  def chose(choice)
    @player.make_decision(choice)
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

end
