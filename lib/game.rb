require_relative './player.rb'

class Game
attr_reader :p1
  def initialize(p1_name)
    @p1 = Player.new(p1_name)
  end
end
