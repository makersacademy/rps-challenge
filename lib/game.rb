require_relative "player"

class Game
  attr_reader :bot
  attr_accessor :human

  def initialize
    @bot = Player.new("Bot")
    @finished = false
  end

  def choose(choice)
    @human.choose(choice)
    @bot.choose_random
    @finished = true
  end

  def winner
    human.winner_against(bot)
  end

  def finished?
    @finished
  end
end
