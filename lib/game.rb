require "./lib/player.rb"

class Game

  attr_reader :playing, :current_turn

  def initialize(player_1, player_2)
    @playing = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @playing.first
  end

  def player_2
    @playing.last
  end

  def options
    { :rock => "Rock", :paper => "Paper", :scissors => "Scissors" }
  end

end
