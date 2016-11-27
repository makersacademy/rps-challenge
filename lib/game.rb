class Game

  attr_reader :computers_choice, :player, :players_choice

  def initialize(player)
    @player = player
    @players_choice = nil
    @computers_choice = nil
  end

  def choices
    [:rock, :paper, :scissors]
  end

  def computers_choice
    @computers_choice = choices.sample
  end

end
