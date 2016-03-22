module Player

  attr_reader :name, :move, :wins

  def win!
    @wins += 1
    @win = true
  end

  def not_win!
    @win = false
  end

  def played!
    @played = true
  end

  def played?
    @played
  end

  def turn_finished!
    @played = false
  end

  def win?
    @win
  end

  def restart!
    @wins = 0
    @win = false
  end

  private

  def setup(name)
    @name = name
    @wins = 0
    @win = false
    @played = false
  end
end
