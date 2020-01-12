class Game
  attr_reader :name, :player_move, :random_move
  
  def initialize(features)
    @name = features["name"]
    @player_move = features["player_move"]
    @random_move = features["random_move"]
  end

  # def end_game
  #   who_won
  # end

  # private

  # def who_won
  #   if @player_move == @random_move
  #   	@winner = "It's a tie!"
  #   elsif @player_move == "Rock" && @random_move == "Scissors"
  #   	@winner = "You win!"
  #   elsif @player_move == "Scissors" && @random_move == "Paper"
  #   	@winner = "You win!"
  #   elsif @player_move == "Paper" && @random_move == "Rock"
  #   	@winner = "You win!"
  #   else
  #   	@winner = "Game wins!"
  #   end
  # end
end

