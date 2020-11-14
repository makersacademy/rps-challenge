class Player
  attr_reader :name, :is_ai
  attr_accessor :score, :current_choice

  def initialize(name, is_ai = false)
    @name = name
    @score = 0
    @is_ai = is_ai
    @current_choice = nil
  end

  def randomize_current_choice
    @current_choice = RockPaperScissors::CHOICES.sample
  end
end
