class Game


attr_reader :player

def initialize(name)
  @player = Player.new(name)
  end


  def name
    @player.name
  end
end