class Game

  attr_reader :player, :bot

  def self.create(player, bot)
    @game = Game.new(player, bot)
  end

  def self.instance
    @game
  end

  def initialize(player, bot)
    @player = player
    @bot = bot
  end

  def print_moves
    "Bot picked #{bot.move} & #{player.name} picked #{player.move}"
  end

  def winner
    if player.move == :rock && bot.move == :scissors ||
       player.move == :paper && bot.move == :rock ||
       player.move == :scissors && bot.move == :paper
       "#{player.name} wins, Sorry Bot"
    elsif  player.move == bot.move
        "draw"
    else
       "Bot wins, Sorry #{player.name}"
    end
  end

end
