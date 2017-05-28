# Responsible for deciding opoonent moves
class Opponent
  attr_reader :choice

  def initialize
    @weapons = [:Rock, :Paper, :Scissors, :Lizard, :Spock]
  end

  def choose_hand
    @choice = @weapons[random_pick - 1]
  end

  private

  def random_pick
    1 + rand(5)
  end

end
