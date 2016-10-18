class Game
  attr_reader :players, :result
  attr_accessor :compu_points

  class << self
    attr_accessor :current
    attr_reader :result
  end

  def initialize(player1, *player2)
    @players = [player1, *player2]
    @compu_points = 0
  end

  def sample
    @result = ["Rock", "Paper", "Scissors"].sample
  end

  def choice(compu_choice, player_choice)
    if compu_choice == player_choice
      "tie"
    elsif (compu_choice == "Paper" && player_choice == "Rock") || (compu_choice == "Rock" && player_choice == "Scissors") || (compu_choice == "Scissors" && player_choice == "Paper")
      "lost"
    elsif (compu_choice == "Paper" && player_choice == "Scissors") || (compu_choice == "Rock" && player_choice == "Paper") || (compu_choice =="Scissors" && player_choice == "Rock")
      "win"
    end
  end

  def add_compu_points
    @compu_points += 1
  end

  def two_choice(p1, p2)
    if
    (p1 == 'Rock' && p2 == 'Scissors') || (p1 == 'Paper' && p2 == 'Rock') || (p1 == 'Scissors' && p2 == 'Paper')
    "win"
    elsif
    (p1 == 'Rock' && p2 == 'Paper') || (p1 == 'Paper' && p2 == 'Scissors') || (p1 == 'Scissors' && p2 == 'Rock')
    "lost"
    else "tie"
    end
  end
end
