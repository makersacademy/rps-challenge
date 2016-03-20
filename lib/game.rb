class Game

  attr_reader :player_one , :player_two , :p_one_sign , :p_two_sign

  def initialize player_one , player_two
    @player_one = player_one
    @player_two = player_two
  end

  def p_one_attack sign
    @p_one_sign = sign.to_sym
  end

  def p_two_attack sign
    @p_two_sign = sign.to_sym
  end

  def compute_turn
    return :draw if @p_one_sign == @p_two_sign

  end

  def choose_winner
    return :draw if @p_one_sign == @p_two_sign
    p_one_won = case @p_one_sign
    when :paper then @p_two_sign == :rock || @p_two_sign == :spock
    when :rock then @p_two_sign == :scissors || @p_two_sign == :lizard
    when :scissors then @p_two_sign == :paper || @p_two_sign == :lizard
    when :lizard then @p_two_sign == :spock || @p_two_sign == :paper
    when :spock then @p_two_sign == :scissor || @p_two_sign == :rock
    else raise "wrong attack type"
    end
    p_one_won ? @player_one : @player_two
  end

  private

  def compare_weapons
    winners = {
      
    }

  end

end
