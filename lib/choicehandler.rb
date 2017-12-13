require_relative 'choiceset'

# ChoiceHandler takes in player choices (in symbol form) and works out who
# has won the round. It can simulate computer players through random choices.
class ChoiceHandler
  attr_reader :set

  def initialize(set: ChoiceSet::SET)
    @set = set
  end

  def sample
    set.keys.sample
  end

  def compare(left, right = nil)
    right ||= sample
    get(left) <=> get(right)
  end

  private

  def get(sym)
    set[sym]
  end
end
