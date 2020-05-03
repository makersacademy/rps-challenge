class MyData 
  attr_accessor :results, :player_wins, :computer_wins, :tie_games, :rounds, :game_class

  def initialize
    @game_class = game_class
    @results = []
    @player_wins = []
    @computer_wins = []
    @tie_games = []
    @rounds = 0
  end

  def rps_score_results(value)
    @results << "#{value.player_pick} v #{value.pc}"
  end

  def rps_win_records(value)
    @player_wins << 1 if value.spin == "I knew I can do it"
    @computer_wins << 1 if value.spin == "You're better than this"
    @tie_games << 1 if value.spin == "Even Steven" 
  end

  def rps_round
    @rounds += 1
  end

  def self.create
    @data = MyData.new
  end
  
  def self.instance
    @data
  end
  
end
