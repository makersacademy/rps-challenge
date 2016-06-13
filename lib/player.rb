# Understands making a move
class Player
  attr_reader :name, :choice
  WEAPONS = [:rock, :paper, :scissors].freeze

  def initialize(name)
    @name = name
  end

  def make_choice(choice)
    fail "Invalid weapon!" unless WEAPONS.include?(choice.to_sym)
    @choice = choice.to_sym
  end
end
