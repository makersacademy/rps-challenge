class Game
attr_accessor :player_1
attr_accessor :player_2
attr_reader :players

  def initialize player_class, winning_score = 5, players = 1
    @player_1 = player_class.new
    @player_2 = player_class.new
    @winning_score = winning_score
    @players = players
  end



end
