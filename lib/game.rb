class Game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
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
