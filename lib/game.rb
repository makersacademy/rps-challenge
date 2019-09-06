class Game
  attr_reader :player1, :player2, :logic

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @logic = { rock: :paper, paper: :scissors, scissors: :rock }
  end

  def attack(player, attack=nil)
    player.attack_with(attack)
  end

  def who_won?
    if @player1.attack == @player2.attack
      "no one"
    elsif
      @logic[@player1.attack] == @player2.attack ? @player1 : @player2
    end
  end
end