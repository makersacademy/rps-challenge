class ResultLog
  def self.build
    @result_log = ResultLog.new
  end
  def self.instance
    @result_log
  end
  
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
