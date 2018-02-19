class Game

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :player1, :player2, :player_weapon, :pc_weapon

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @pc_weapon = random_weapon
    @result = result
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def result
    player1_weapon, player2_weapon = @player1.weapon, @player2.weapon
    if RULES[player1_weapon] == player2_weapon
      "#{@player1.name} wins this game"
    elsif RULES[player2_weapon] == player1_weapon
      "#{@player2.name} wins this game"
    else
      "It's a draw"
    end
  end

end
