class Game

  attr_reader :name, :computer_choice, :winner
  attr_accessor :player_choice

  def initialize(player_name)
    @name = player_name
    @player_choice = nil
  end

  def computer_chooses
    @computer_choice = random_select
  end

  def evaluate
    case
    # when @player_choice == "Rock" && @computer_choice == "Scissors"
    #   @winner = @player_name
    # # when @player_choice == "Rock" && @computer_choice == "Paper"
    # #   @winner = "Computer"
    when (@player_choice == "Scissors" && @computer_choice == "Rock")
       @winner = "Computer"
    # # when @player_choice == "Scissors" && @computer_choice == "Paper"
    # #   @winner = @player_name
    # # when @player_choice == "Paper" && @computer_choice == "Rock"
    # #   @winner = @player_name
    # # when @player_choice == "Paper" && @computer_choice == "Scissors"
    # #   @winner = "Computer"
    else
      @winner = "Nobody"
    end
  end

  def random_select
     ["Rock", "Paper", "Scissors"].sample
  end

end