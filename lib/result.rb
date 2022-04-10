require_relative 'computer'
require_relative 'player'

class Result
  RULES = { 
    "Rock" => "Scissors",
    "Paper" => "Rock",
    "Scissors" => "Paper"
  }.freeze

  def initialize(player = Player.new("Player"), player2 = Computer.new)
    @player = player
    @player2 = player2
  end

  def winner
    return @player if player_win
    return @player2 if player2_win
  end

  private

  def player_win
    RULES[@player.move] == @player2.move
  end

  def player2_win
    RULES[@player2.move] == @player.move
  end

end
