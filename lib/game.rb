class Game
  attr_reader :name, :player1_choice, :player2_choice

  def initialize(name, player_choice)
    @name = name
    @player1_choice = player_choice
    @player2_choice = %w(paper rock scissors).sample

  end


  def play
    if @player1_choice == "rock" && @player2_choice == "scissors"
      return "Player 1 wins"
    elsif @player1_choice == "paper" && @player2_choice == "rock"
      return "Player 1 wins"
    elsif @player1_choice == "scissors" && @player2_choice == "paper"
      return "Player 1 wins"
    elsif @player1_choice == @player2_choice
      return "It's a draw"
    else
      return "Player 2 wins"
    end
  end

end
