class Player
  attr_reader :name, :ai
  attr_accessor :score, :current_choice

  def initialize(name, ai = false)
    @name = name
    @score = 0
    @ai = ai
    @current_choice = nil
  end

  def randomize_current_choice
    @current_choice = RockPaperScissors::CHOICES.sample
  end
end