class RPSGame

  Gamesize = 3
  def initialize
    @choices = %w(rock paper scissors)
  end

  def game_choices
    choices.dup
  end

  private
  attr_reader :choices
end
