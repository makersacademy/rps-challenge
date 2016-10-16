class Game
  attr_reader :players, :result

  class << self
    attr_accessor :current
    attr_reader :result
  end

  def initialize(player1, *player2)
    @players = [player1, *player2]
  end

  def choice(player_choice)
    @result = ["Rock", "Paper", "Scissors"].sample
    if @result == player_choice
      :tie
    elsif (@result == "Paper" && player_choice == "Rock") || (@result == "Rock" && player_choice == "Scissors") || (@result == "Scissors" && player_choice == "Paper")
      :lost
    elsif (@result == "Paper" && player_choice == "Scissors") || (@result == "Rock" && player_choice == "Paper") || (@result =="Scissors" && player_choice == "Rock")
      :win
    end
  end

end
