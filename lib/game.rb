class Game
  attr_reader :player1, :player2, :logic

  def self.the_game
    @game
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end


  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @logic = { rock: :scissors, paper: :rock, scissors: :paper }
  end

  def attack(player, attack=nil)
    player.attack_with(attack)
  end

  def who_won?
    if @player1.attack == @player2.attack
      "It's a draw!"
    else
      @logic[@player1.attack] == @player2.attack ? @player1.name : @player2.name
    end
  end
end