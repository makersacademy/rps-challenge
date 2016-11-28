require_relative 'Player.rb'

class Game

  def self.create(player_1)
    @game = Game.create(player_1)
  end

  def self.instance
    @game
  end

attr_reader :player_1, :selection

def initialize(player_1)

@player_1 = player_1
@selection

end

def select(selection)
@selection = selection
end


end
