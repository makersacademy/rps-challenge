class Game

  attr_reader :player, :bot
  attr_accessor :choice

  def initialize(player, bot)
    @bot = bot
    @player = player
    @choice = nil
  end

  def self.save_instance(player, bot)
   @instance = Game.new(player, bot)
  end

  def self.instance
    @instance
  end

  def result
    determine_winner
  end

  private

  def determine_winner
    return "Draw" if draw
    return "Win" if winning_combination
    return "Loss"
  end

  def draw
    @bot.choice == @choice
  end

  def winning_combination
    (@bot.choice == "Rock" && @choice == "Paper") ||
    (@bot.choice == "Paper" && @choice == "Scissors") ||
    (@bot.choice == "Scissors" && @choice == "Rock")
  end

end
