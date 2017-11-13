class Game

  attr_reader :player_1, :player_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    if player_1.move.beats?(player_2.move)
      "#{player_1.name} wins!"
    elsif player_2.move.beats?(player_1.move)
      "#{player_2.name} wins!"
    else
      "It's a draw!"
    end
  end

end
