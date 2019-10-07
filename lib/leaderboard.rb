class LeaderBoard
  def self.build
    @leaderboard = LeaderBoard.new
  end
  
  def self.instance
    @leaderboard
  end

  attr_reader :results

  def initialize
    @results = []
  end

  def add(result)
    @results << result
  end

  def player_wins(player)
    results.count(player)
  end

  def rounds
    results.length
  end

end
