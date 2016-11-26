class Game

def self.create(player)
  @game = Game.new(player)
end

def self.instance
  @game
end

attr_reader :player1

  def initialize(player)
    @player1 = player
  end

end
