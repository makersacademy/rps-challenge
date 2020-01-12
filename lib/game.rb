require_relative 'game_moves'

class Game

  attr_reader :message

  def initialize(player1, player2 = Player.new("Computer"))
    @players = [player1, player2]
    @message = "Good Luck!"
    @game_logic = GameLogic.new
  end

  def return_player(player)
    @players[player - 1]
  end

  def move(player_choice, computer_choice = @players[1].random_choice)
    combo_hash = @game_logic.find_the_combination(player_choice, computer_choice)
    @message = " Scores - Player: #{player_choice} vs. Computer: #{computer_choice}"
    @players[0].increment_score(combo_hash["play1_score"])
    @players[1].increment_score(combo_hash["play2_score"])
  end
end
