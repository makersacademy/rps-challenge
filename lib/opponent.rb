# Responsible for deciding opoonent moves
class Opponent
  attr_reader :choice, :weapons

  def initialize
    @weapons = [:Rock, :Paper, :Scissors, :Lizard, :Spock]
  end

  def choose_hand
    @choice = @weapons.sample
  end
  
end
