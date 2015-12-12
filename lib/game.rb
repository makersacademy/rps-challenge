class Game
  attr_reader :player_1, :player_2, :winner, :weapons, :loser

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
    @loser = nil
    @weapons = [player_1.weapon, player_2.weapon]
  end

  def outcome
    fail "Can't play: Two weapons need to be selected." if complete_weapons?
    if weapons.include?("rock") && weapons.include?("paper")
      @winner = "paper"
      @loser = "rock"
    elsif weapons.include?("rock") && weapons.include?("scissors")
      @winner = "rock"
      @loser = "scissors"
    elsif weapons.include?("paper") && weapons.include?("scissors")
      @winner = "scissors"
      @loser = "paper"
    else
      @winner = nil
      @loser = nil
    end
  end

  private

  def complete_weapons?
    weapons.include?nil
  end
end
