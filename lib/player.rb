class Player

attr_reader :name, :choice

  def initialize(player_name)
    @name = player_name
    @choice
  end

  def choose_rock
    @choice = "Rock"
  end

  def choose_scissors
    @choice = "Scissors"
  end

  def choose_paper
    @choice = "Paper"
  end

end
