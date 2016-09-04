class Player

  attr_reader :name, :player_choice, :player_value

  def initialize(name)
    @name = name
  end

  def rock
    @player_choice = "rock"
    @player_value = 0
  end

  def paper
    @player_choice = "paper"
    @player_value = 1
  end

  def scissors
    @player_choice = "scissors"
    @player_value = 2
  end

end
