class Game

  attr_reader :player

  def initialize(player, randomizer = Randomizer.new, determinewinner = DetermineWinner.new)
    @randomizer = randomizer
    @player = player
    @determinewinner = determinewinner
  end

  def computers_choice
    @computers_choice = @randomizer.result
  end

  def players_choice(choice)
    @players_choice = choice
  end

  def winner
    @determinewinner.result(@computers_choice, @players_choice)
  end
end
