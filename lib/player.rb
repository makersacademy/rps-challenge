# Understands keeping score
class Player
  attr_reader :name, :choice
  WEAPONS = [:rock, :paper, :scissors].freeze
  DEFAULT_NAMES = ["Hugh Jass", "I.P. Freely", "Amanda Hugginkiss"].freeze

  def initialize(name = DEFAULT_NAMES.sample)
    @name = name
  end

  def make_choice(choice = WEAPONS.sample)
    fail "Invalid weapon!" unless WEAPONS.include?(choice.to_sym)
    @choice = choice.to_sym
  end
end
