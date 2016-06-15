class Game
  attr_reader :player, :random_card, :enemy_card, :result

  def initialize(player, random_card)
    @player= player
    @random_card= random_card
    @result= ""
  end

  def fight_against(enemy_card)
    enemy_card = enemy_card.index.to_i
    @result= :draw if enemy_card == @random_card.index.to_i
    enemy_card-1 != 0 && enemy_card != @random_card.index.to_i ? @result= :win : @result= :lose
  end

  private
  attr_reader :win, :lose, :draw

end
