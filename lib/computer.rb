require_relative 'player'

class Computer < Player

  def initialize(choice_options=DEFAULT_CHOICES)
    super(choice_options)
    @name = ['Dave', 'Harry','Olivia', 'Anna'].sample
  end

  def auto_choice
    @player_choice = choice_options.sample
  end

end