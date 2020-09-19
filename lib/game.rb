require_relative "player"

class Game
  attr_reader :player, :bot

  def initialize(player = Player)
    @player = player
  end

  def determine_winner
    player_move = @player.move
    @bot_move = ["Rock", "Paper", "Scissors"].sample

    if player_move == @bot_move
      return "It's a draw! Try again!"
    end

    case player_move
    when "Rock"
      return rock_beats()
    when "Paper"
      return paper_beats()
    when "Scissors"
      return scissors_beats()
    end
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  private

  def bot_wins
    return "Bot's #{@bot_move} beats #{player.name}'s #{player.move}"
  end

  def player_wins
    return "#{player.name}'s #{player.move} beats Bot's #{@bot_move}"
  end

  def rock_beats
    if @bot_move == "Paper"
      return bot_wins()
    else
      return player_wins()
    end
  end

  def paper_beats
    if @bot_move == "Scissors"
      return bot_wins()
    else
      return player_wins()
    end
  end

  def scissors_beats
    if @bot_move == "Rock"
      return bot_wins()
    else
      return player_wins()
    end
  end
end
