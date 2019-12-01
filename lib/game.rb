class Player
  attr_reader :name, :points, :latest_comp_move
  def initialize(name)
    @name = name
    @points = 0
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
      "#{name} you lost."
    elsif choice == play_paper && latest_comp_move == play_scissors
      "#{name} you lost."
    elsif choice == play_scissors && latest_comp_move == play_rock
      "#{name} you lost."
    else win_round; "#{name} you won!"
    end
  end

  def display_points
    points
  end

private

  def win_round
    @points += 1
  end
end
