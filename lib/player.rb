class Player
  attr_reader :choice, :name

  def initialize
    @name = name
  end

  def user_play
    @choice = ["paper", "rock","scissors"]
  end


  def cpu_play
  @choice = %w(rock paper scissors).sample
  end
end
