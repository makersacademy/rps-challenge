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

  def pick_winner
    @winner = compare_weapons
    @winner.add_win unless @winner == :draw
  end

  def show_winner
    return :draw if @winner == :draw
    @winner.nickname.dup
  end

  private

  def compare_weapons
    winners = {
      paper:    [:rock , :spock] ,
      rock:     [:scissors , :lizard] ,
      scissors: [:paper , :lizard] ,
      lizard:   [:spock , :paper] ,
      spock:    [:scissors , :rock]
    }
    raise "wrong sign" if winners[@p_one_sign].nil? || winners[@p_two_sign].nil?
    return :draw if @p_one_sign == @p_two_sign
    ( winners[@p_one_sign].include? @p_two_sign ) ? @player_one : @player_two
  end

end
