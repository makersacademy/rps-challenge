
class Player

  NEUTRAL_SCORE = 0

  attr_reader :choice, :name

  def initialize(choice, name)
    @choice = choice
    @name = name
  end
end
