require_relative "player"
require_relative "bot"

class Game
  attr_reader :player, :bot

  def initialize(player = Player, bot = Bot)
    @player = player
    @bot = bot
  end

  def display_opponents
    return "#{@player.name} vs. #{bot.name}"
  end

  def determine_winner
    player_move = @player.move
    bot_move = @bot.move

    if player_move == bot_move
      return "It's a draw! Try again!"
    end

    case player_move
    when "Rock"
      return rock_beats(bot_move)
    when "Paper"
      return paper_beats(bot_move)
    when "Scissors"
      return scissors_beats(bot_move)
    end
  end

  def self.create(player, bot)
    @game = Game.new(player, bot)
  end

  def self.instance
    @game
  end

  private

  def bot_wins
    return "#{@bot.name}'s #{@bot.move} beats #{@player.name}'s #{@player.move}"
  end

  def player_wins
    return "#{@player.name}'s #{@player.move} beats #{@bot.name}'s #{@bot.move}"
  end

  def rock_beats(bot_move)
    if bot_move == "Paper"
      return bot_wins()
    else
      return player_wins()
    end
  end

  def paper_beats(bot_move)
    if bot_move == "Scissors"
      return bot_wins()
    else
      return player_wins()
    end
  end

  def scissors_beats(bot_move)
    if bot_move == "Rock"
      return bot_wins()
    else
      return player_wins()
    end
  end
end
