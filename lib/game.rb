require_relative './ai_player'

class Game
  attr_reader :player_1, :player_2
  
  def initialize(params)
    params = init_defaults.merge(params)
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
  end

  def decide_winner
    return :draw if player_1.choice == player_2.choice
    case player_1.choice
      when :rock
        player_2.choice == :scissors ? player_1 : player_2
      when :paper
        player_2.choice == :rock ? player_1 : player_2
      when :scissors
        player_2.choice == :paper ? player_1 : player_2
    end
  end

  private
  def init_defaults
    { player_2: AiPlayer.new }
  end

end
