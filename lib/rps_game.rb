class RpsGame

  def attack attack
    @player_attack = attack
  end

  private

  def ai_attack
    ['rock', 'paper', 'scissors'].sample
  end

end