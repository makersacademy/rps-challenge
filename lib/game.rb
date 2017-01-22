class Game
  attr_reader :rules
  def initialize
    @rules ={
      :rock => {:rock => "Draw", :paper => "Opponent wins", :scissors => "Player 1 wins"},
      :scissors => {:rock => "Opponent wins", :paper => "Player 1 wins", :scissors => "Draw"},
      :paper => {:rock => "Player 1 wins", :paper => "Draw", :scissors => "Opponent wins"}
    }
  end

  def play(player, opponent)
    @rules[player.downcase.to_sym][opponent.downcase.to_sym]
  end
end
