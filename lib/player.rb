module Player

  def initialize name
    @name = name
    @wins = 0
  end

  def win_count
    @wins
  end

  def nickname
    @name.dup
  end

  def add_win
    @wins += 1
  end

end
