class Player

  attr_reader :name, :decision

  def initialize(name)
    @name = name
  end

  def decides(decision)
    @decision = decision
  end
end
