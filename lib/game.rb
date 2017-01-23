class Game

  attr_reader :player_1, :player_2
  WIN = [[:Rock, :Scissors], [:Paper, :Rock], [:Scissors, :Paper]]

  def self.create (player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
     @game
  end

  def initialize (player_1, player_2)
  	@player_1 = player_1
  	@player_2 = player_2
  end

  def find_result
    return "#{player_1.choice} matches #{player_2.choice} - DRAW!" if player_1.choice.to_sym == player_2.choice
    return "#{player_1.choice} beats #{player_2.choice} - #{player_1.name} wins!" if WIN.include?([player_1.choice.to_sym, player_2.choice])
    "#{player_2.choice} beats #{player_1.choice} - #{player_2.name} wins!"
  end

end