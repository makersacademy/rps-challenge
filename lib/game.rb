class Game

  attr_reader :player, :user_choice, :computers_choice

  def initialize(player, randomizer = Randomizer.new, determinewinner = DetermineWinner.new)
    @randomizer = randomizer
    @player = player
    @determinewinner = determinewinner
  end

  def decide_computers_choice
    @randomizer.result
  end

  def players_choice(choice)
    @user_choice = choice
  end

  def winner
    @computers_choice = decide_computers_choice
    @determinewinner.result(computer: @computers_choice, player: @user_choice)
  end
end
