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
    return "It's a draw!" if player.weapon == bot.weapon

    if player.weapon == 'Rock' && bot.weapon == 'Scissors'
      player.name
    elsif player.weapon == 'Paper' && bot.weapon == 'Rock'
      player.name
    elsif player.weapon == 'Scissors' && bot.weapon == 'Paper'
      player.name
    elsif player.weapon == 'Lizard' && (bot.weapon == 'Spock' || bot.weapon == 'Paper')
      player.name
    elsif player.weapon == 'Spock' && (bot.weapon == 'Scissors' || bot.weapon == 'Rock')
      player.name
    else
      bot.name
    end
  end
end
