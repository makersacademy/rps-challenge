class Choice
  attr_reader :type
  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }

  def initialize(type)
    @type = type
  end

  def beats?(other_choice)
    RULES[@type] == other_choice
  end
end
