class Game
  def initialize(player, randomizer = Randomizer.new)
    @randomizer = randomizer
  end

  def computers_choice
    @randomizer.result
  end

end
