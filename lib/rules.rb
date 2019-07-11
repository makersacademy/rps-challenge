require_relative 'weapon'

class Rules

  CHOICES = [:rock, :scissors, :paper]

  attr_reader :hierarchy, :choices

  def initialize(choices = CHOICES)
    @choices = choices
    @hierarchy = {}
    make_hierarchy
  end

  def make_hierarchy
    CHOICES.each_with_index { |choice, index |
      choice == CHOICES[-1] ? @hierarchy[choice] = CHOICES[0] : @hierarchy[choice] = CHOICES[index + 1]
      }
  end

end

# rules = Rules.new
#
# p rules
