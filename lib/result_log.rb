class ResultLog
  attr_reader :results

  def initialize
    @results = []
  end

  def add(result)
    @results << result
  end

  def player_wins(player)
    @results.count(player)
  end

end
