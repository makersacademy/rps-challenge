class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_2_choice = ["rock", "paper", "scissors"].sample
  end

  #   def result(player_1_choice, player_2_choice)
  #     player_2_choice = @player_2_choice
  #     case player_1_choice.downcase
  #     when "paper" and player_2_choice.downcase == "paper"
  #         "draw"
  #     when "rock" and player_2_choice.downcase == "paper"
  #         @players[1]
  #     when "scissors" and player_2_choice.downcase == "paper"
  #         @players[0]
  #     when "paper" and player_2_choice.downcase == "rock"
  #         @players[0]
  #     when "rock" and player_2_choice.downcase == "rock"
  #         "draw"
  #     when "scissors" and player_2_choice.downcase == "rock"
  #         @players[1]
  #     when "paper" and player_2_choice.downcase == "scissors"
  #         @players[1]
  #     when "rock" and player_2_choice.downcase == "scissors"
  #         @players[0]
  #     when "scissors" and player_2_choice.downcase == "scissors"
  #         "pass"
  #     end
  #     end
end
