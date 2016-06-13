class Game
  attr_reader :player, :random_card, :enemy_card, :result

  def initialize(player, random_card)
    @player= player
    @random_card= random_card
    @result= ""
  end

  def fight_against(enemy_card)
    enemy_card = enemy_card.index.to_i
    return @result= :draw if enemy_card == @random_card.index.to_i
    enemy_card =enemy_card -1
    if enemy_card != 0 && enemy_card != @random_card.index.to_i
      @result= :lose
    else
      @result= :win
    end
    
  end

  private
  attr_reader :win, :lose, :draw

end
