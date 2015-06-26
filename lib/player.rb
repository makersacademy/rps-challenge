class Player

  attr_accessor :opponent, :name, :choice

  def initialize name
    @name = name
    @choice = nil
  end

  def choose_rock_paper_or_scissors choice
    @choice = choice
    choice
  end

  def winner?
    fail 'Erm, you have no opponent :/' unless opponent

  end

  private

  def rock_paper_or_scissors choice, opponent.choice

  end

end
