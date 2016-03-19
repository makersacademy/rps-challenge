module Player

  attr_reader :name, :move, :wins

  def win!
    @wins += 1
  end

  def restart!
    @wins = 0
  end

  private

  def setup(name)
    @name = name
    @wins = 0
  end
end
