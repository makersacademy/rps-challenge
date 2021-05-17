class Game
  RPS = ["Rock", "Paper", "Scissors"]
  attr_reader :player, :comp_move
  def initialize(player)
    @player = player
    @comp_move = comp_choice
  end

  def comp_choice
    RPS[rand(3)]
  end

  def outcome
    case
    when @player.move == "Rock" && @comp_move == "Scissors"
      play_win
    when @player.move == "Scissors" && @comp_move == "Paper"
      play_win
    when @player.move == "Paper" && @comp_move == "Rock"
      play_win
    when @player.move == @comp_move
      draw
    when @player.move == "Scissors" && @comp_move == "Rock"
      comp_win
    when @player.move == "Paper" && @comp_move == "Scissors"
      comp_win
    when @player.move == "Rock" && @comp_move == "Paper"
      comp_win
    end
  end

  def play_win
    "#{@player.name} wins!!"
  end

  def comp_win
    "The computer wins!!"
  end

  def draw
    "It's a draw"
  end
end
