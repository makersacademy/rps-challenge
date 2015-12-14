class Element

  ELEMENTS = [
    :rock,
    :paper,
    :scissors
  ]

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  attr_reader :type

  def initialize(type)
    type = random_type unless type
    fail 'Element not valid' unless valid_type?(type.to_sym)
    @type = type.to_sym
  end

  def beats?(other)
    RULES[type] == other.type
  end

  def same_type?(other)
    type == other.type
  end

  private

  def valid_type?(element)
    ELEMENTS.include?(element)
  end

  def random_type
    ELEMENTS.sample
  end
end
