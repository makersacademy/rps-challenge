require_relative './ai_player'

class Game
  attr_reader :player_1, :player_2
  
  def initialize(params)
    params = init_defaults.merge(params)
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
  end

  def decide_winner
    case player_1.choice
      when :rock then p1_rock_scenarios
      when :paper then p1_paper_scenarios
      when :scissors then p1_scissors_scenarios
    end
  end

  private
  def init_defaults
    { player_2: AiPlayer.new }
  end

  def p1_rock_scenarios
    case player_2.choice
      when :scissors then player_1.sym_name
      when :rock then :draw
      when :paper then player_2.sym_name
    end
  end

  def p1_paper_scenarios
    case player_2.choice
      when :rock then player_1.sym_name
      when :paper then :draw
      when :scissors then player_2.sym_name
    end
  end

  def p1_scissors_scenarios
    case player_2.choice
      when :paper then player_1.sym_name
      when :scissors then :draw
      when :rock then player_2.sym_name
    end
  end

end
