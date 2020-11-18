class Game
  attr_reader :player, :computer_choice
  attr_accessor :player_choice

  RULES = { "Rock" => "Scissors",
          "Paper" => "Rock",
          "Scissors" => "Paper" }

  def initialize(player)
    @player = player
    @player_choice = nil
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
    @status = 0

  end

  def result
    if @player_choice == @computer_choice
      @status = "draw"
    elsif RULES[@player_choice] == @computer_choice
      @status = "win"
    else
      @status = "lose"
    end
    @status
  end

end
