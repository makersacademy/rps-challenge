class Game

  def counter_increment
    @count ||= 0
    @count += 1
  end

  def count
    @count ||= 0
  end

end
