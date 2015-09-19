require_relative 'player'  # => true
class Game

  attr_reader :players  # => nil

  def initialize(*player)
    @players = []          # => []
    @players << player     # => [[#<Player:0x007f99fb9d11f0 @name="Matt">]]
  end

  def play(*players)
  end


end




game = Game.new(Player.new("Matt"))  # => #<Game:0x007f99fb9d11a0 @players=[[#<Player:0x007f99fb9d11f0 @name="Matt">]]>
