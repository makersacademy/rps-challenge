require_relative 'Player.rb'

class Game

  def self.create(player_1)
    @game = Game.create(player_1)
  end

  def self.instance
    @game
  end

attr_reader :player_1, :player_2, :selections

def initialize(player_1, player_klass = Player, player_2 = "Computer")

@player_1 = player_klass.new(player_1)
@player_2 = player_klass.new(player_2)
@selections = {}

end

def player_1_select(selection)
@selections = {selection => nil}
end


end
