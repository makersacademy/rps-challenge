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

  def sample(player_choice)
      @result = ["Rock", "Paper", "Scissors"].sample
      choice(player_choice)
  end

  def choice(player_choice)
    if @result == player_choice
      :tie
    elsif (@result == "Paper" && player_choice == "Rock") || (@result == "Rock" && player_choice == "Scissors") || (@result == "Scissors" && player_choice == "Paper")
      :lost
    elsif (@result == "Paper" && player_choice == "Scissors") || (@result == "Rock" && player_choice == "Paper") || (@result =="Scissors" && player_choice == "Rock")
      :win
    end
  end

  def add_compu_points
    @compu_points += 1
  end

  def check
    if @players[0].points == 5 then '/won_game' elsif @compu_points == 5 then '/lost_game'
    else
      '/play'
    end
  end

  def two_check
    if @players[0].points == 5 then '/won_game' elsif @players[1].points == 5 then '/2won_game'
    else
      '/2play'
    end
  end
end
