require_relative './player'
class Game

attr_reader :players, :player_move, :computer_move

  def initialize(*players)
    @players = [players]
    @player_move = nil
    @computer_move = nil
  end

  def player_1
    @players.flatten.first
  end

  def player_2
    @players.flatten[1]
  end

  def player_chooses(sign)
    @player_move = sign
  end

  def computer_chooses(sign)
    @computer_move = sign
  end

end