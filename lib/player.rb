
class Player

attr_reader :rock, :paper, :scissors

  def initialize
    @rock = false
    @paper = false
    @scissors = false
  end

  def choose_rock
    @rock = true
  end

  def choose_paper
    @paper = true
  end

  def choose_scissors
    @scissors = true
  end 

end
