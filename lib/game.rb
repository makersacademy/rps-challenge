class Game
  
  attr_reader :player, :player_move

  def initialize(player = Player.new("Player 1"), move = 'Rock')
    @player = player
    @player_move = move
  end

  def move
    ["Rock", "Paper", "Scissors"].sample
  end

  def playing
    @computer_move = move
    if @player_move == @computer_move
      'Draw'
    elsif @player_move == "Rock" && @computer_move == "Scissors"
      'Win'
    elsif @player_move == "Paper" && @computer_move == "Rock"
      'Win'
    elsif @player_move == "Scissors" && @computer_move == "Paper"
      'Win'
    else
      'Lost'
    end
  end

end
