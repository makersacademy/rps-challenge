class Game
  attr_reader :player, :bot

  def initialize(player)
    @player = player
    @bot = ["Rock", "Paper", "Sissors"]
  end

=begin
  def turn(player_choice)
    bot_choice = @bot.sample

    case player_choice
    when player_choice == "Rock" && bot_choice == "Paper"
      return "Bot Wins!"
    when player_choice == "Rock" && bot_choice == "Sissors"
      return "#{player.name} wins!"
    when player_choice == "Paper" && bot_choice == "Sissors"
      return "Bot Wins!"
    when player_choice == "Paper" && bot_choice == "Rock"
      return "#{player.name} wins!"
    when player_choice == "Sissors" && bot_choice == "Rock"
      return "Bot Wins!"
    when player_choice == "Sissors" && bot_choice == "Paper"
      return "#{player.name} wins!"
    else
      return "It's a draw! Try again!"
    end
=end
end
