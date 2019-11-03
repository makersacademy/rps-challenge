require_relative 'player'

class Game
  attr_reader :player, :ai_hand
  def initialize(player_name, player_class = Player)
    @player = player_class.new(player_name)
  end

  def play_rps
    @ai_hand = ai_hand_generator
    if @player.player_hand == @ai_hand
        "Draw!"
      elsif  @player.player_hand == :rock && @ai_hand == :scissors
        "You Win!"
      elsif @player.player_hand == :paper && @ai_hand == :rock
        "You Win!"
      elsif @player.player_hand == :sissors && @ai_hand == :paper
        "You Win!"
      else
        "You Lose!"
    end
  end

  private
  
    def ai_hand_generator
      [:rock, :paper, :scissors].sample
    end

end
