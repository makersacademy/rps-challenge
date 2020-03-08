class Results

  attr_reader :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def calculate_results
    if @player_1.choice == @player_2.choice
      @winner = "It's a draw!"
    elsif @player_1.choice == "Rock" && @player_2.choice == "Paper" ||
      @player_1.choice == "Scissors" && @player_2.choice == "Rock" ||
      @player_1.choice == "Paper" && @player_2.choice == "Scissors"
      @winner = @player_2
    else
      @winner = @player_1
    end
  end
end
