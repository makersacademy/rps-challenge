class LogicItem

  attr_reader :p1, :p2, :result, :verb

  def initialize(p1:, p2:, result:, verb:)
    @p1 = p1
    @p2 = p2
    @result = result
    @verb = verb
  end

end
