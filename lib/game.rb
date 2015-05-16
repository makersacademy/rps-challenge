class Game
attr_accessor :player_1
attr_accessor :player_2
  def initialize player_class, winning_score=5
    @player_1 = player_class.new
    @player_2 = player_class.new
    @winning_score = winning_score
  end

end
