require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :winner, :loser, :weapons

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
    @loser = nil
    @weapons = []
  end

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }
            
  def outcome
    @weapons.push(self.player_1.weapon, self.player_2.weapon)
    fail "Can't play: Two weapons need to be selected." if complete_weapons?
    if weapons.include?("Rock") && weapons.include?("Paper")
      @winner = "Paper"
      @loser = "Rock"
    elsif weapons.include?("Rock") && weapons.include?("Scissors")
      @winner = "Rock"
      @loser = "Scissors"
    elsif weapons.include?("Paper") && weapons.include?("Scissors")
      @winner = "Scissors"
      @loser = "Paper"
    else
      @winner = "None"
      @loser = "None"
    end
  end

  private

  def complete_weapons?
    self.weapons.include? nil
  end
end
