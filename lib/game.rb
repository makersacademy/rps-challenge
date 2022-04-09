class Game
  
  attr_reader :player, :player_move_v, :computer_move

  def initialize(player = Player.new("Player 1"))
    @player = player
  end
  
  def player_move(move)
    @player_move_v = move
  end
  def move
    ["Rock", "Paper", "Scissors"].sample
  end

  def playing
    @computer_move = move
    if @player_move_v == @computer_move
      'Draw'
    elsif @player_move_v == "Rock" && @computer_move == "Scissors"
      'Win'
    elsif @player_move_v == "Paper" && @computer_move == "Rock"
      'Win'
    elsif @player_move_v == "Scissors" && @computer_move == "Paper"
      'Win'
    else
      'Lost'
    end
  end

end
