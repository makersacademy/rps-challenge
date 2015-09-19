require_relative 'player'  # => true
class Game

  attr_reader :players

  def initialize(*player)
    @players = []
    @players << player
    @array = [:rock, :paper, :scissors]
  end

  def play(my_hand)
    @my_hand = my_hand
    @c = @array.sample
  end

  def winner?
    equal?
  end

  def equal?
      "Draw!" if  (@c == @my_hand)
  end


end




game = Game.new(Player.new("Matt"))  # => #<Game:0x007f94c30a2e68 @players=[[#<Player:0x007f94c30a2dc8 @name="Matt">]]>
