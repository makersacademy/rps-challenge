require "./lib/player.rb"

class Game

  attr_reader :playing

  def initialize(player_1, player_2)
    @playing = [player_1, player_2]
  end

  def options
    { :rock => "Rock", :paper => "Paper", :scissors => "Scissors" }
  end

end
