class Player

  attr_accessor :choice

  def initialize
    @choice
  end

  def choose rock_paper_scissors
    # fail 'Please choose rock, paper or scissors!' if @
    self.choice = rock_paper_scissors
  end

end