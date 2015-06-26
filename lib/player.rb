class Player

  attr_accessor :opponent, :name

  def initialize name
    @name = name
  end

  def choose_rock_paper_or_scissors choice
    choice
  end

  def winner?
    fail 'Erm, you have no opponent :/' unless opponent

  end

end
