require_relative 'player'

class Game

  attr_reader :players, :choices, :bot, :game_result
  # attr_accessor :p_choice

  def initialize(player)
    @players = [player]
    @choices = ["Rock","Paper","Scissors"]
    @bot = Player.new("bot")
  end

  def first_player_name
    @players[0].name
  end

  def bot_name
    @bot.name
  end

  def bot_choice
    @bot.player_choice = @choices.sample
  end

  def game_result
    if @players[0].player_choice == "Rock" && @bot.player_choice == "Rock"
      "It's a draw!!"
    elsif @players[0].player_choice == "Paper" && @bot.player_choice == "Rock"
      "You won!!"
    elsif @players[0].player_choice == "Scissors" && @bot.player_choice == "Rock"
      "You lost!!"

    elsif @players[0].player_choice == "Rock" && @bot.player_choice == "Paper"
      "You lost"
    elsif @players[0].player_choice == "Paper" && @bot.player_choice == "Paper"
      "It's a draw!"
    elsif @players[0].player_choice == "Scissors" && @bot.player_choice == "Paper"
      "You won!!"

    elsif @players[0].player_choice == "Rock" && @bot.player_choice == "Scissors"
      "You won!!"
    elsif @players[0].player_choice == "Paper" && @bot.player_choice == "Scissors"
      "You lost!!"
    elsif @players[0].player_choice == "Scissors" && @bot.player_choice == "Scissors"
      "It's a draw!!"
    end
  end

end
