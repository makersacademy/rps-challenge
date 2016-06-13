class Log

  attr_reader :history

  def initialize
    @history = []
  end

  def store(result)
    @history << result
  end

  def last_result
    @history.last
  end

  def score
    p1 = history.select { |entry| entry[2] == :player1 }.length
    p2 = history.select { |entry| entry[2] == :player2 }.length
    "#{ p1 }-#{ p2 }"
  end
end
