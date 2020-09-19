require_relative "player"

class Game
  attr_reader :player, :bot

  def initialize(player)
    @player = player
    @bot_move = ["Rock", "Paper", "Scissors"].sample
  end

  def determine_winner
    player_move = @player.move

    case player_move
    when "Rock"
      case @bot_move
      when "Paper"
        bot_wins()
      when "Scissors"
        player_wins()
      end
    when "Paper"
      case @bot_move
      when "Scissors"
        bot_wins()
      when "Rock"
        player_wins()
      end
    when "Scissors"
      case @bot_move
      when "Rock"
        bot_wins()
      when "Paper"
        player_wins()
      end
    else
      return "It's a draw! Try again!"
    end
  end

  private

  def bot_wins
    return "Bot's #{@bot_move} beats #{player.name}'s #{player.move}"
  end

  def player_wins
    return "#{player.name}'s #{player.move} beats Bot's #{@bot_move}"
  end
end
