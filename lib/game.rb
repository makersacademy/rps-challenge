class Game

  WINS = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    return @player_1 if WINS.include?([@player_1.choice, @player_2.choice])
    return @player_2 if WINS.include?([@player_2.choice, @player_1.choice])
    'draw'
  end
end
