class Game

  attr_reader :player_1
  attr_accessor :computer_choice

  def initialize(player_1, computer_choice = nil)
    @player_1 = player_1
    @computer_choice = computer_choice
  end

  def set_computer_choice
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    choice = @player_1.choice
    choice == "Rock" ? check_rock : choice == "Paper" ?
    check_paper : check_scissors
  end

  def check_rock
    comp = @computer_choice
    comp == "Rock" ? "draw" : comp == "Paper" ? "Lose" : "Win"
  end

  def check_paper
    comp = @computer_choice
    comp == "Rock" ? "Win" : comp == "Paper" ? "Draw" : "Lose"
  end

  def check_scissors
    comp = @computer_choice
    comp == "Rock" ? "Lose" : comp == "Paper" ? "Win" : "Draw"
  end
end
