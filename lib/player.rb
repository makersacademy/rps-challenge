class Player

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 0
    @hand_selection
  end

  def name
    @name
  end


  def choice(rps)
    @hand_selection = rps
  end

  def hand_selection
    @hand_selection
  end

end