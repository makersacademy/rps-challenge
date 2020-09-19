require_relative "player"

class Game
  attr_reader :player, :bot

  def initialize(player)
    @player = player
  end

  def determine_winner
    player_move = @player.move
    @bot_move = ["Rock", "Paper", "Scissors"].sample

    case player_move
    when "Rock"
      case @bot_move
      when "Paper"
        return bot_wins()
      when "Scissors"
        return player_wins()
      end
    when "Paper"
      case @bot_move
      when "Scissors"
        return bot_wins()
      when "Rock"
        return player_wins()
      end
    when "Scissors"
      case @bot_move
      when "Rock"
        return bot_wins()
      when "Paper"
        return player_wins()
      end
    end

    return "It's a draw! Try again!"
  end

  private

  def bot_wins
    return "Bot's #{@bot_move} beats #{player.name}'s #{player.move}"
  end

  def player_wins
    return "#{player.name}'s #{player.move} beats Bot's #{@bot_move}"
  end
end
