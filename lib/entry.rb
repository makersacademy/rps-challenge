class Entry

  attr_reader :list

  def initialize
    @list = {}
  end

  def add_entry(key, player)
    @list[key] = player
  end

  def p1_not_entered?
    !@list.include?(:p1)
  end

  def p2_not_entered?
    !@list.include?(:p2)
  end
end
