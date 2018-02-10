require_relative 'player.rb'

class Game
  attr_reader :player, :bot

  def initialize(player, bot)
    @player = player
    @bot = bot
  end

  def output_winner
    declare_winner
  end

  private

  def declare_winner
    return "It's a draw!" if player.choice == bot.choice

    if player.choice == 'Rock' && bot.choice == 'Scissors'
      player.name
    elsif player.choice == 'Paper' && bot.choice == 'Rock'
      player.name
    elsif player.choice == 'Scissors' && bot.choice == 'Paper'
      player.name
    else
      bot.name
    end
  end
end
