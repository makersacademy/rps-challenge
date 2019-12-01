class Game
  START = 0

  attr_reader :player, :player_points, :comp_points, :latest_comp_move
  def initialize(player)
    @player = player
    @player_points = START
    @comp_points = START
  end

  def computer_move
    computer_move = ["paper", "rock", "scissors"].sample
    @latest_comp_move = computer_move
  end 

  def play_rock
    "rock"
  end

  def play_paper
    "paper"
  end
  
  def play_scissors
    "scissors"
  end

  def result(choice)
    if choice == latest_comp_move then "It is a draw."
    elsif choice == play_rock && latest_comp_move == play_paper
      loose_round; "#{player} you lost."
    elsif choice == play_paper && latest_comp_move == play_scissors
      loose_round; "#{player} you lost."
    elsif choice == play_scissors && latest_comp_move == play_rock
      loose_round; "#{player} you lost."
    else win_round; "#{player} you won!"
    end
  end

private

  def win_round
    @player_points += 1
  end

  def loose_round
    @comp_points += 1
  end
end
